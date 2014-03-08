
# site.pp
file { "/etc/barlocker":
   owner => root,
   group => root,
   mode => 440
}

