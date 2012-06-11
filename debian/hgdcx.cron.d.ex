#
# Regular cron jobs for the hgdcx package
#
0 4	* * *	root	[ -x /usr/bin/hgdcx_maintenance ] && /usr/bin/hgdcx_maintenance
