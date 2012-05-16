Easy groovy starter 
-------------------

Easy set up to run Groovy scripts: download, extract, add this directory to system `PATH`.

Now you can execute Groovy scripts with:

    #> gr hello.gr

Particular Groovy version can be specified by `GROOVY_VERSION` variable in the `groovy.gr` script. 
It will be downloaded by Grapes on the first run. Grapes logging is enabled, so you can watch the progress. 

If there is `./lib` directory in same directory as your script, all jars from there will be automatically added to `CLASSPATH`.
This is handy when trying things missing in Maven repositories (so no help from Grapes).

All the Grapes are downloaded to this directory, so it's easy to port Groovy scripts together with executing environment.
