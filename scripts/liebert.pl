#!/usr/local/bin/perl

use Xymon::Monitor::SNMP;
use Xymon::Client;
use Data::Dumper;
use Config::General;

 my @hosts = ("maitups1");

my $configfile = $0;
$configfile =~ s/liebert.pl/liebert.conf/;

foreach my $host( @hosts ) {	 
	 
	 my $snmp = Xymon::Monitor::SNMP->new({
	 	hostname=>"$host",
	 	version=>"2c",
	 	community=>"public",
	 	oidconfig=>"liebert.conf"
	 	}
	);
	 
	$snmp->run();
	
	
	$snmp->close();

}

 