#!/usr/local/bin/fish

set -l bat_icons "" "" ""
set -l pwr_icons ""

set -l bat_status (apm -b)
set -l pwr_status (apm -a)

if test $pwr_status -eq 1
  echo -n $pwr_icons[1]
else
  echo -n $bat_icons[(math $bat_status + 1)]
end
echo -n (apm -l)"%"
