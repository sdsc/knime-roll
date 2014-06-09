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

None


## Building

To build the knime roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `knime-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.

make 
```
produces a roll with a name that begins "`knime`"; it
contains and installs similarly-named rpms.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll knime
% cd /export/rocks/install
% rocks create distro
% rocks run roll knime | bash
```

In addition to the software itself, the roll installs knime environment
module files in:

```shell
/opt/modulefiles/applications/knime
```


## Testing

The knime-roll includes a test script which can be run to verify proper
installation of the knime-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/knime.t 
ok 1 - knime is installed
ok 2 - knime test run
ok 3 - knime module installed
ok 4 - knime version module installed
ok 5 - knime version module link created
1..5
```
