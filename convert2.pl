#!/usr/bin/perl -w

opendir(DIR,"output");
@skills= grep { $_ ne '.' && $_ ne '..'} readdir(DIR);
closedir(DIR);

if(-e "output2"){
}else{
	mkdir "output2";
	print "created translated output directory";
}

foreach(@skills){
	$filename=$_;
	open(FILE,"output/".$filename);
	@lines = <FILE>;
	if($lines[2] =~ /(.*): \"(.*)\"/){
		$skill = $2;
		$skill =~ s/\s/\_/;
	}

	open(FILE2,'>'."output2/".$skill."\.json");
	foreach(@lines){
		print FILE2 $_;
	}

	print $skill." created\n";
	close FILE2;
	close FILE;
}