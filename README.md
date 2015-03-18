# rvm-download

rvm-download is an [rbenv](https://github.com/sstephenson/rbenv) plugin that provides an `rbenv download` command to download and extract ruby binaries from the [Snap CI binaries repository](https://s3.amazonaws.com/binaries.snap-ci.io/).

## Installation

`git clone https://github.com/snap-ci/rbenv-download.git ~/.rbenv/plugins/rbenv-download`

## Usage

`Usage: rbenv download <ruby-version>`

Example: downloading ruby 2.2.0:
```
vagrant@precise64:~$ rbenv download 2.2.0
Download and extract ruby 2.2.0 from https://s3.amazonaws.com/binaries.snap-ci.io/rubies
Ruby 2.2.0 has been installed
```

Example: trying to download a missing package
```
vagrant@precise64:~$ rbenv download 2.2.1
Download and extract ruby 2.2.1 from https://s3.amazonaws.com/binaries.snap-ci.io/rubies
https://s3.amazonaws.com/binaries.snap-ci.io/rubies/centos/6/x86_64/ruby-2.2.1.tar.gz cannot be reached
Could not find a pre-compiled version of ruby '2.2.1' for your current system: CentOS x86_64 (6)
```

Example: trying to install from a different URL
```
vagrant@precise64:~$ RBENV_BINARIES_BASE=https://internal.example.com/rubies rbenv download 2.2.1
Download and extract ruby 2.2.1 from https://internal.example.com/rubies
https://internal.example.com/rubies/centos/6/x86_64/ruby-2.2.1.tar.gz cannot be reached
Could not find a pre-compiled version of ruby '2.2.1' for your current system: CentOS x86_64 (6)
```

## Troubleshooting

###  It seems your ruby installation is missing psych (for YAML output)

```
It seems your ruby installation is missing psych (for YAML output).
To eliminate this warning, please install libyaml and reinstall your ruby.
```

Install the `libyaml` package available on your distribution. (`libyaml-0-2` on Ubuntu)


