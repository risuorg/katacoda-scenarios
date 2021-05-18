## Let's fix the issue

First, we'll be installing chrony:

`yum -y install chrony`{{execute}}

Now, we need to enable the service so that it's running:

`service chronyd start`{{execute}}

Now, let's re-run risu:

`risu.py -l -i clock`{{execute}}

So, the problem has been fixed because chronyd is now running on the system.

If we run with more detail:

`risu.py -l -i clock -v`{{execute}}

We can see that ntp failed, but chrony succeded and the ntpd unfail plugin altered the reported status as there's already at least one server running.

(in real scenario, `chrony.conf` should be configured against our organization
servers, etc., but for demonstration, we'll be stopping here)
