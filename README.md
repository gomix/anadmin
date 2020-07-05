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

[0;32m############# NEXTCLOUD STATUS[0m

{
    "installed": true,
    "version": "18.0.6.0",
    "versionstring": "18.0.6",
    "edition": ""
}
[0;32m############# [0m

[0;32m############# OS UPDATES CHECK[0m
[0;32m OS: Everything up to date[0m
[0;32m############# [0m

[0;32m############# NEXTCLOUD UPDATES CHECK[0m
[0;32m NextCloud: Everything up to date[0m
[0;32m############# [0m

[0;32m############# LETSENCRYPT CERTIFICATES EXPIRATION DATE CHECK[0m
notBefore=Jun 19 23:23:49 2020 GMT
notAfter=Sep 17 23:23:49 2020 GMT
[0;32m############# [0m

[0;32m############# SERVICES STATUS CHECK[0m
Apache status: active
PHP-FPM status: active
MariaDB status: active
Redis status: active
[0;32m############# [0m
</pre></code>
