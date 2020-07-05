# anadmin
Set of bash scripts for sysadmin i developed for [Academia Nacional de Ajedrez](https://anaj.org.ve/) (Chess National Academy).

I'm trying to be modular and easy to ready code so my organization of files are simple so far:

<pre><code>
.
├── lib                    < stand alone and common scripts
├── some_bash_script.sh    < hihg level scripts
└── wip                    < work in progress scripts (developing)
</code></pre>

## What i managing

* [ANA NextCloud](https://virtual.anaj.org.ve/) instance

## Tasks

1. Query status
2. Take backups

## Sample script output


<pre><code>
$ sh status_general.sh0

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
