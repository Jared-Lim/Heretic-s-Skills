#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

while(<>){
	print $_;
	sleep(100000);
}