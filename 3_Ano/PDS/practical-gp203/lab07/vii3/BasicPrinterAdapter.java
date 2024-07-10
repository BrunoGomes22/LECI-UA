package vii3;

import java.util.ArrayList;
import java.util.List;

public class BasicPrinterAdapter implements AdvancedPrinterInterface{
    private BasicPrinter basicPrinter;
    private int jobId = 0;
    private List<Integer> jobQueue = new ArrayList<>();

    public BasicPrinterAdapter(BasicPrinter basicPrinter) {
        this.basicPrinter = basicPrinter;
    }

    @Override
    public int print(Document doc) {
        boolean success = basicPrinter.print(doc.getContent());
        if (success) {
            jobQueue.add(jobId);
            return jobId++;
        } else {
            return -1;
        }
    }

    @Override
    public List<Integer> print(List<Document> docs) {
        List<Integer> jobIds = new ArrayList<>();
        for (Document doc : docs) {
            int id = print(doc);
            if (id != -1) {
                jobIds.add(id);
            }
        }
        return jobIds;
    }

    @Override
    public void showQueuedJobs() {
        System.out.println("Spooled jobs:");
        for (Integer id : jobQueue) {
            System.out.println("  * Job " + id);
        }
    }

    @Override
    public boolean cancelJob(int jobId) {
        return jobQueue.remove(Integer.valueOf(jobId));
    }

    @Override
    public void cancelAll() {
        jobQueue.clear();
    }
}
