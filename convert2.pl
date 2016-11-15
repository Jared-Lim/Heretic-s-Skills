#!/usr/bin/perl -w

opendir(DIR,"output");
@skills= grep { $_ ne '.' && $_ ne '..'} readdir(DIR);
closedir(DIR);

foreach(@skills){
	$filename=$_;
	open(FILE,"output/".$filename);
	@lines = <FILE>;
	print @lines[2];
	close FILE;
}