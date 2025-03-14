package vii3;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class AdvancedPrinter implements AdvancedPrinterInterface {

    // https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/util/concurrent/ExecutorService.html
    class PrinterService implements Runnable {
        private final LinkedBlockingQueue<PrintJob> printQueue;
        private final ExecutorService pool;
     
        // este serviço simula a fila de impressão e a impressão de um documento de cada vez
        public PrinterService() {
                printQueue = new LinkedBlockingQueue<>();
                pool = Executors.newFixedThreadPool(1);
        }
     
        public void run() { // run the service
            try {
                for (;;) {
                    PrintJob j = printQueue.take();
                    pool.submit(j).get();
                }
            } catch (java.util.concurrent.RejectedExecutionException ex) {
                System.out.println("Job rejected by spool: service shutting down?");
            } catch (ExecutionException e) {
                System.out.println("Error");
                e.printStackTrace();
            } catch (InterruptedException ex) {
            this.shutdownAndAwaitTermination();
            }
        }
        private int nextJobId = 0;
        public synchronized int newPrintJob(Document doc) {
            PrintJob job = new PrintJob(doc, nextJobId++);
            printQueue.add(job);
            return job.getId();
        }

        public synchronized boolean cancelJob(int jobId) {
            return printQueue.removeIf(job -> job.getId() == jobId);
        }

        void shutdownAndAwaitTermination() {
            pool.shutdown(); // Disable new tasks from being submitted
            try {
            // Wait a while for existing tasks to terminate
            if (!pool.awaitTermination(60, TimeUnit.SECONDS)) {
                pool.shutdownNow(); // Cancel currently executing tasks
                // Wait a while for tasks to respond to being cancelled
                if (!pool.awaitTermination(60, TimeUnit.SECONDS))
                    System.err.println("Spool did not terminate.");
            }
            } catch (InterruptedException ie) {
                // (Re-)Cancel if current thread also interrupted
                pool.shutdownNow();
                printQueue.clear();
                // Preserve interrupt status
                Thread.currentThread().interrupt();
            }
        }

        public LinkedBlockingQueue<PrintJob> getPrintQueue() {
            return printQueue;
        }

    }

    private PrinterService spool;

    public AdvancedPrinter() {
        this.spool = new PrinterService();
        new Thread(this.spool).start();
    }

    @Override
    public int print(Document doc) {
        return spool.newPrintJob(doc);
    }

    @Override
    public List<Integer> print(List<Document> docs) {
        List<Integer> jobIds = new ArrayList<>();
        for (Document doc : docs) {
            int jobId = print(doc);
            jobIds.add(jobId);
        }
        return jobIds;
    }

    @Override
    public void showQueuedJobs() {
        LinkedBlockingQueue<PrintJob> queue = spool.getPrintQueue();
        System.out.println("Spooled jobs:");
        for (PrintJob job : queue) {
            String text = job.getDocument().getText();
            String[] words = text.split("\\s+");
            String preview = "";
            for (int i = 0; i < Math.min(5, words.length); i++) {
                preview += words[i] + " ";
            }
            System.out.println("  * Job " + job.getId() + ": \"" + preview.trim() + "...\"");
        }
    }

    @Override
    public boolean cancelJob(int jobId) {
        return spool.cancelJob(jobId);
    }

    @Override
    public void cancelAll() {
        spool.shutdownAndAwaitTermination();
    }

}
