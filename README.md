Easy groovy starter 
-------------------

To run Groovy scripts: download (~6MB) and prepend this directory to system `PATH`.

Now you can execute Groovy scripts with:

    #> gr hello.gr

Groovy version can be updated with `GROOVY_VERSION` variable in the `groovy.gr` script. 
Required Groovy will be fetched as Grape on first run.

If there is a `./lib` directory in your CWD, all jars from there will be automatically added to `CLASSPATH`.
This is handy when trying things absent in Maven repositories (when Grapes can't help).

All Grapes are fetched to this directory, so it's easy to port Groovy scripts together with executing environment.
Grapes logging is enabled, so you can watch download progress. 
