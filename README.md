# Base Docker image containing Java 1.7.0

Not useful on its own, but the shared image saves space and download time.

## jmxtrans-agent

[jmxtrans-agent](https://github.com/jmxtrans/jmxtrans-agent) is included, along
with a sample agent config file that captures heap and non-heap memory usage, GC
activity, and a couple of other things.

See [the instructions](https://github.com/jmxtrans/jmxtrans-agent#java-agent-
declaration) for full details, but in summary, add the following to your Java
invocation:

    -javaagent:/usr/share/java/jmxtrans-agent.jar=/usr/share/java/jmxtrans-agent.xml

Pass the following properties (or their environment equivalent) to direct it to
your Graphite installation:

* graphite.host -- defaults to `localhost`
* graphite.port -- defaults to `2003`
* jmxtrans.graphite.prefix -- defaults to `DEFAULT_PREFIX.`; something like `servers.<host>.<app>.` might be a good idea

