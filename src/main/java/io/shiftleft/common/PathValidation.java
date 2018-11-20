package io.shiftleft.common;

import java.io.File;
import java.io.IOException;

public class PathValidation {


    public void failIfDirectoryTraversal(String relativePath)
    {
        boolean status = false;

        File file = new File(relativePath);

        if (file.isAbsolute())
        {
            throw new RuntimeException("Directory traversal attempt - absolute path not allowed");
        }

        String pathUsingCanonical;
        String pathUsingAbsolute;
        try
        {
            pathUsingCanonical = file.getCanonicalPath();
            pathUsingAbsolute = file.getAbsolutePath();
        }
        catch (IOException e)
        {
            throw new RuntimeException("Directory traversal attempt?", e);
        }


        // Require the absolute path and canonicalized path match.
        // This is done to avoid directory traversal
        // attacks, e.g. "1/../2/"
        if (! pathUsingCanonical.equals(pathUsingAbsolute))
        {
            throw new RuntimeException("Directory traversal attempt?");
        }

        status = true;
    }

    public String validateRssFeed(String feedName) {
        if(!feedName.contains(".."))
            return feedName;
        else
            return feedName.replace("..","");
    }


}
