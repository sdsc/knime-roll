#!/usr/bin/perl -w
# knime roll installation test.  Usage:
# knime.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/knime';
my $output;

# knime-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'knime installed');
} else {
  ok(! $isInstalled, 'knime not installed');
}
SKIP: {

  skip 'knime not installed', 5 if ! $isInstalled;

  `/bin/ls /opt/knime/knime 2>&1`;
  ok($? == 0, 'knime script installed');
  SKIP: {
    skip 'No knime exec test written', 1;
  }

  skip 'modules not installed', 3 if ! -f '/etc/profile.d/modules.sh';
  `/bin/ls /opt/modulefiles/applications/knime/[0-9]* 2>&1`;
  ok($? == 0, 'knime module installed');
  `/bin/ls /opt/modulefiles/applications/knime/.version.[0-9]* 2>&1`;
  ok($? == 0, 'knime version module installed');
  ok(-l '/opt/modulefiles/applications/knime/.version',
     'knime version module link created');

}
