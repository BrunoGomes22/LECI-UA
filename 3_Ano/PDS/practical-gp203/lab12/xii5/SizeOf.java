package xii5;

import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
public class SizeOf {
    public static void main(String[] args) throws IOException {
        boolean recursive = false;
        Path rootPath = null;

        for (String arg : args) {
            if (arg.equals("-r")) {
                recursive = true;
            } else {
                rootPath = Paths.get(arg);
            }
        }

        if (rootPath == null) {
            System.out.println("Usage: java SizeOf [-r] <directory>");
            return;
        }

        FileSizeVisitor visitor = new FileSizeVisitor();
        if (recursive) {
            Files.walkFileTree(rootPath, visitor);
        } else {
            for (Path path : Files.newDirectoryStream(rootPath)) {
                if (Files.isRegularFile(path)) {
                    visitor.visitFile(path, Files.readAttributes(path, BasicFileAttributes.class));
                }
            }
        }

        System.out.println("Total size: " + visitor.getSize() + " bytes");
    }
}