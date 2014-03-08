
class puppetmaster {
	include "git"

	exec { "rm -rf /etc/puppet":
	}
	exec { "git clone '...' /etc/puppet":
		require => Exec["rm -rf /etc/puppet"]
	}

	package { "puppetmaster":
		ensure => "latest"
	}

	service { "puppetmaster":
		ensure => "running",
		enable => true,
	}

	file { "/usr/sbin/update-puppet-master":
		owner => "root",
		group => "root",
		mode => 755,
		source => "puppet:///modules/puppetmaster/update-puppet-master.sh",
	}

	cron { "update-puppet":
		command => "/usr/sbin/update-puppet-master",
		ensure => "present",
		minute => "*/5",
		user => "root",
	}
}
