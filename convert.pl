#!/usr/bin/perl -w

use Time::HiRes qw(usleep nanosleep);

if(-e "output"){
}else{
	mkdir "output";
	print "created output directory\n";
}
sleep(1);
$count = 1;
while(<>){
	chomp $_;
	if($_ =~ /registerSkill/){
		if($count < 10){
			open(FILE,'>'."output/skill-00".$count."\.json");
		}elsif($count < 100){
			open(FILE,'>'."output/skill-0".$count."\.json");
		}else{
			open(FILE,'>'."output/skill-".$count."\.json");
		}
		print FILE "{\n";
	}elsif($_ =~ /\}\)\;/){
		print FILE "}\n";
	}elsif($_ =~ /^\s$/){
		close FILE;
		$count++;
	}else{
		print FILE $_."\n";
	}
}