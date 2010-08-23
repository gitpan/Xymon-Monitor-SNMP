#!/usr/local/bin/perl

use Xymon::Monitor::SNMP;
 
 my @hosts = ("maitups1");
 
	
foreach my $host( @hosts ) {	 
	
	 my $snmp = Xymon::Monitor::SNMP->new({
	 	hostname=>"$host",
	 	version=>"2c",
	 	community=>"public",
	 	OIDS=>{
	 		current1=>"1.3.6.1.2.1.33.1.4.4.1.3.1",
	 		current2=>"1.3.6.1.2.1.33.1.4.4.1.3.2",
	 		current3=>"1.3.6.1.2.1.33.1.4.4.1.3.3",
	 		percent1=>"1.3.6.1.2.1.33.1.4.4.1.5.1",
	 		percent2=>"1.3.6.1.2.1.33.1.4.4.1.5.2",
	 		percent3=>"1.3.6.1.2.1.33.1.4.4.1.5.3",
	 		batterystatus=>"1.3.6.1.2.1.33.1.2.1.0",
	 		batteryminutes=>"1.3.6.1.2.1.33.1.2.3.0",
	 		batterycharge=>"1.3.6.1.2.1.33.1.2.4.0"
	 		
	 	}
	 });
	
	
	$snmp->getValues();
	$snmp->close();

}

 