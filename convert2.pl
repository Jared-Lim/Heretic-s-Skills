#!/usr/bin/perl -w

opendir(DIR,"output");
@skills= grep { $_ ne '.' && $_ ne '..'} readdir(DIR);
closedir(DIR);

foreach(@skills){
	$filename=$_;
	open(FILE,"output/".$filename);
	@lines = <FILE>;
	if($lines[2] =~ /(.*): \"(.*)\"/){
		$skill = $2;
		$skill =~ s/\s/\_/;
		print $skill."\n";
	}
	close FILE;
}