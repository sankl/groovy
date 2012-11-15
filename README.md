Easy Groovy Launcher
--------------------

Project provides the very minimum required to run Groovy scripts.

It is ~5MB to [download](https://github.com/sankl/groovy/zipball/master) and easy to set up: just prepend system `PATH` with directory containing extracted archive (`java` should be also in the `PATH`).

Now you are able to run Groovy scripts by `gr` command:

    #> gr -e "printf '%s: %s', 'Hello from Groovy', GroovySystem.version"
    Hello from Groovy: 1.8.0

Or, if you put the script in `hello.gr` file:

    #> gr hello.gr
    Hello from Groovy: 1.8.0

Different version of Groovy can be specified with `-use` option:

    #> gr -use 1.8.1 hello.gr
    Hello from Groovy: 1.8.1

Default Groovy version can be manually updated in `groovy.gr` script.

If script requires some component from Maven repository,
it's possible to specify dependency with Grape and fetch it automatically on a first run:

    #> cat hello.gr
    @Grab(group='commons-logging', module='commons-logging', version='1.1.1')
    import static org.apache.commons.logging.LogFactory.*
    getLog(this.class).info('Hello from Groovy: '+GroovySystem.version)

    #> gr hello.gr
    INFO: Hello from Groovy: 1.8.0

Grape logging is enabled, so you can watch download progress. 
All Grapes are fetched to `./grapes` directory near the launchers.
So it's easy to port Groovy scripts together with executing environment.

Sometimes required component is absent in any Maven repo.
Or you've built classes/jars by yourself.
You can put them in `./lib` directory near the script and they will be added to jvm `CLASSPATH`:

    #> ls ./lib
    commons-logging-1.1.1.jar

    #> cat hello.gr
    import static org.apache.commons.logging.LogFactory.*
    getLog(this.class).info('Hello from Groovy: '+GroovySystem.version)

    #> gr hello.gr
    INFO: Hello from Groovy: 1.8.0
