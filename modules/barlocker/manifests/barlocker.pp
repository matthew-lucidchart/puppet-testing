
class barlocker {
	file { "/etc/barlocker":
		owner => "root",
		group => "root",
		mode => 644
	}
}
