# SDSC "knime" roll

## Overview

This roll bundles knime

For more information about the knime roll please visit their official web pages:

- <a href="www.knime.org" target="_blank">knime</a> is an open source platform for data analytics, reporting and integration that integrates components for machine learning and data mining

## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate source file(s) using a machine that does
have Internet access and copy them into the `src/<package>` directories on your
Rocks development machine.


## Dependencies

The sdsc-roll must be installed on the build machine, since the build process
depends on make include files provided by that roll.


## Building

To build the knime roll, execute this on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee build.log
```

A successful build will create the file `cmake-*.disk1.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll knime
% cd /export/rocks/install
% rocks create distro
```

Subsequent installs of compute and login nodes will then include the contents
of the knime-roll.  To avoid cluttering the cluster frontend with unused
software, the knime-roll is configured to install only on compute and
login nodes. To force installation on your frontend, run this command after
adding the knime-roll to your distro

```shell
% rocks run roll knime host=NAME | bash
```

where NAME is the DNS name of a compute or login node in your cluster.

In addition to the software itself, the roll installs knime environment
module files in:

```shell
/opt/modulefiles/applications/knime
```


## Testing

The knime-roll includes a test script which can be run to verify proper
installation of the roll documentation, binaries and module files. To run
the test scripts execute the following command(s):

```shell
% /root/rolltests/knime.t 
```
