Easy groovy starter 
-------------------

To run Groovy scripts: download (~7MB) and add this directory to system `PATH`.

Now you can execute Groovy scripts with:

    #> gr hello.gr

Groovy version can be set by `GROOVY_VERSION` variable in the `groovy.gr` script. 
It will be fetched as Grape on the first run. Grapes logging is enabled, so you can watch download progress. 

If there is a `./lib` directory in your CWD, all jars from there will be automatically added to `CLASSPATH`.
This is handy when trying things absent in Maven repositories (when Grapes can't help).

All Grapes are fetched to this directory, so it's easy to port Groovy scripts together with executing environment.
