#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

while(<>){
	chomp $_;
	if($_ !~ /registerSkill/ && $_ !~ /\}\)\;/){
		print $_."\n";
		usleep(100000);
	}
}