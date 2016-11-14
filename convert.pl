#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

if(-e "output"){
}else{
	mkdir "output";
	print "created output directory\n";
}
sleep(1);

$count = 1;

print "--------------------------\n";
print "\tSkill ".$count."\n";
print "--------------------------\n";

while(<>){
	chomp $_;
	if($_ =~ /registerSkill/){
		print "{\n";
	}elsif($_ =~ /\}\)\;/){
		print "}\n";
	}elsif($_ =~ /^\s$/){
		$count++;
		print "--------------------------\n";
		print "\tSkill ".$count."\n";
		print "--------------------------\n";
	}else{
		print $_."\n";
	}
	usleep(100000);
}