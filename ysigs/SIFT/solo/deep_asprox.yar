rule Asprox_binary {
    meta:
        author= "Jared Greenhill"
		date= "2014-01-08"
        description= "Asprox bot binary yara rule for late Dec 2013 & early Jan 2014 samples"
		hash0= "48e4b1e322e7c5fd53b6745e8b2409e6"
		hash1= "D2F9B39E670005CB2B99C1678040CAB4"
		sample_filetype = "exe"
        
    strings:
		$re1=/[0-9a-zA-z|-]{30,40}/ 
		$s1="PDF Watermark Creator" wide
		$s2="Control-C hit" wide
		$s3="1.6.0.166" wide    
		$s4="This installation was built with Inno Setup." wide
    
    condition:
		all of them

}