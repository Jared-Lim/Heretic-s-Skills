#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

while(<>){
	chomp $_;
	if($_ !~ /^registerSkill\(\{/ && $_ !~ /^\}\)\;/ && $_ !~ /\/\*/ && $_ !~ /\*\//){
		if($_ =~ /\t(\".*\")(\:.*)/){
			print $1." ";
		}elsif($_ =~ /\s/){
			print "\n";
		}
	}
	usleep(10000);
}
print "\n";