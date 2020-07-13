#!/bin/bash

# keep track of script usage with a simple curl query
# the remote host runs nginx and uses a javascript function to mask your public ip address
# see here for details: https://www.nginx.com/blog/data-masking-user-privacy-nginscript/
#
file_path=`realpath "$0"`
curl -Is --connect-timeout 3 http://150.136.21.99:6868${file_path} > /dev/null

# generate an output based on the script name
outfile=$(basename -s .sh $0)".out"
#echo $outfile
rm -f $outfile 2>&1
exec > >(tee -a $outfile) 2>&1

echo 
echo "To view the contents of the wallet run the following DB command..."
echo

sqlplus / as sysdba <<EOF
--
set lines 120
set pages 9999
column wrl_type format a12
column wrl_parameter format a35
column activation_time format a36
column key_use format a14
column tag format a36
column name format a10
column wallet_type format a12
--
select a.con_id, b.name, a.wrl_type, a.wrl_parameter, a.status, a.wallet_type from v\$encryption_wallet a, v\$containers b where a.con_id=b.con_id order by a.con_id;
--
select con_id, activation_time, key_use, tag from v\$encryption_keys order by con_id;
--
EOF

