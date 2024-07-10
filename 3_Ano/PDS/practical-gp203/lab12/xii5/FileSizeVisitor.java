package xii5;

import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;

public class FileSizeVisitor extends SimpleFileVisitor<Path> {
    private long size = 0;

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) {
        size += attrs.size();
        return FileVisitResult.CONTINUE;
    }

    public long getSize() {
        return size;
    }
}