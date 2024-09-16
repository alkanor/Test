import jenkins.model.Jenkins


def proc = ['sh', '-c', 'whoami'].execute();
def os = new StringBuffer();
proc.waitForProcessOutput(os, System.err);
println(os.toString());

