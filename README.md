Graylog2 Omnibus Project
========================
This project creates full-stack platform-specific packages for
`Graylog2`!

Installation
------------
You must have a sane Ruby 1.9+ environment with Bundler installed. Ensure all
the required gems are installed:

```shell
$ sudo bundle install --binstubs
```

Usage
-----
### Build

You create a platform-specific package using the `build project` command:

```shell
$ sudo bin/omnibus build graylog2
```

Currently we support only Ubuntu 14.04

### Clean

You can clean up all temporary files generated during the build process with
the `clean` command:

```shell
$ sudo bin/omnibus clean graylog2
```

Adding the `--purge` purge option removes __ALL__ files generated during the
build including the project install directory (`/opt/graylog2`) and
the package cache directory (`/var/cache/omnibus/pkg`):

```shell
$ sudo bin/omnibus clean graylog2 --purge
```

### Help

Full help for the Omnibus command line interface can be accessed with the
`help` command:

```shell
$ bin/omnibus help
```

Usage
-----
After installing the omnibus package on your server you have to execute `graylog2-ctl` command

```shell
$ sudo graylog2-ctl set-admin-password sEcrEtPaSsword!
$ sudo graylog2-ctl reconfigure
```

All services should run now and you can access Graylog2 through the web interface `http://<yourServer>:9000`

