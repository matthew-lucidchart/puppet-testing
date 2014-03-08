
class barlocker {
	file { "/etc/barlocker":
		owner => "root",
		group => "root",
		mode => 644,
		source => "puppet:///modules/barlocker/testfile1"
	}
}
