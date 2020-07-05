# anadmin
Set of bash scripts for sysadmin i developed for [Academia Nacional de Ajedrez](https://anaj.org.ve/) (Chess National Academy) to automate common tasks.

I'm trying to be modular and easy to ready code so my organization of files are simple so far:

<pre><code>
.
├── lib                    < stand alone and common scripts
├── some_bash_script.sh    < hihg level scripts
└── wip                    < work in progress scripts (developing)
</code></pre>

# Configuration

You need to some configuration for the scripts to work.

## SSH Keys

You need to copy your ssh public key to you backup server. I use rsync over ssh to do the backups.

## Aliases

To easily run ```occ```command and manage you NextCloud instance.

<pre><code>
  alias occ='sudo -u apache php /var/www/nextcloud/occ'
</pre></code>


## What i am managing here

* [ANA NextCloud](https://virtual.anaj.org.ve/) instance

## Tasks

1. Query status
2. Take backups

## Sample script output

### status_general
<pre><code>
$ sh status_general.sh

############# NEXTCLOUD STATUS
{
    "installed": true,
    "version": "18.0.6.0",
    "versionstring": "18.0.6",
    "edition": ""
}
#############

############# OS UPDATES CHECK
 OS: Everything up to date
############# 

############# NEXTCLOUD UPDATES CHECK
 NextCloud: Everything up to date
############# 

############# LETSENCRYPT CERTIFICATES EXPIRATION DATE CHECK
notBefore=Jun 19 23:23:49 2020 GMT
notAfter=Sep 17 23:23:49 2020 GMT
############# 

############# SERVICES STATUS CHECK
Apache status: active
PHP-FPM status: active
MariaDB status: active
Redis status: active
############# 
</pre></code>

### take_backups
<pre><code>
$ sh lib/status_general.sh0


############# BACKUPS (BEGIN)
############# NEXTCLOUD
Maintenance mode enabled
############# 

 BACKUP: NextCloud Directories (fs) starts
 ----------------------------
/var/www/nextcloud/config
created directory /home/cloud/backups/virtual.anaj.org.ve/2020070513
config/
config/.htaccess
            495 100%    0.00kB/s    0:00:00              495 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=4/6)
...
...
...
sent 19.40K bytes  received 188 bytes  1.19K bytes/sec
total size is 56.90K  speedup is 2.91
 ----------------------------
/var/www/nextcloud/themes
themes/
themes/README
            899 100%    0.00kB/s    0:00:00              899 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=16/18)
themes/example/
themes/example/defaults.php
          3.10K 100%    2.96MB/s    0:00:00            3.10K 100%    2.96MB/s    0:00:00 (xfr#2, to-chk=14/18)
...
...
...

sent 16.23K bytes  received 291 bytes  1.06K bytes/sec
total size is 28.28K  speedup is 1.71
 ----------------------------
/var/www/data
data/
data/.htaccess
            542 100%    0.00kB/s    0:00:00              542 100%    0.00kB/s    0:00:00 (xfr#1, ir-chk=1172/1174)
...
...
...
data/.ocdata
              0 100%    0.00kB/s    0:00:00 (xfr#2, ir-chk=1171/1174)
data/audit.log
         32.77K   7%   77.48kB/s    0:00:05          427.03K 100%  981.23kB/s    0:00:00 (xfr#33790, to-chk=0/38379)

sent 998.26M bytes  received 663.83K bytes  11.55M bytes/sec
total size is 1.68G  speedup is 1.68
 ----------------------------
 ----------------------------
 BACKUP:  finished

 BACKUP: OS Configuration (/etc) starts
 ----------------------------
/etc
etc/
etc/.pwd.lock
              0 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=1082/1084)
etc/.updated
            208 100%    0.00kB/s    0:00:00              208 100%    0.00kB/s    0:00:00 (xfr#2, to-chk=1081/1084)
...
...
...
sent 5.49M bytes  received 13.99K bytes  282.04K bytes/sec
total size is 22.11M  speedup is 4.02
 ----------------------------
 ----------------------------
 BACKUP:  finished

 BACKUP: Database (mysql) starts
 ----------------------------
 ----------------------------
 BACKUP:  finished

############# NEXTCLOUD
Maintenance mode disabled
############# 

############# BACKUPS (END)

</pre></code>
