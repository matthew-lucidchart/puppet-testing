
node default {
	include "barlocker"
}

node /^puppetmaster\d+\.lucidchart\.com$/ {
	include "barlocker"
}
