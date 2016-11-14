#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

while(<>){
	print $_;
	usleep(100000);
}