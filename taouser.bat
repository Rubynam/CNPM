dsadd user "cn=u4,ou=nhatnghe,dc=dom16,dc=local" -pwd P@ssword
echo "phuc oc cho"
dsmod user "cn=u4,ou=NhatNghe,dc=dom16,dc=local" -pwd P@ssword105
dsrm "cn=u4,ou=NhatNghe,dc=dom16,dc=local"
csvde -i -f csvde_user.csv -k
csvde -d "ou=NhatNghe,dc=dom16,dc=local" -f C:\export_user1.csv
ldifde -i -f ldifde_user.ldf -k
ldifde -d "ou=NhatNghe,dc=dom16,dc=local" -f C:\export_user2.ldf
dsadd group "cn=giamdoc,ou=nhatnghe,dc=dom16,dc=local" -samid giamdoc -secgrp yes -scope g
dsmod group "cn=giamdoc,ou=nhatnghe,dc=dom16,dc=local" -addmbr "cn=u1,ou=nhatnghe,dc=dom16,dc=local"
dsget group "cn=giamdoc,ou=nhatnghe,dc=dom16,dc=local" -members
dsrm "cn=giamdoc,ou=nhatnghe,dc=dom16,dc=local"
csvde -i -f csvde_group.csv
ldifde -i -f ldifde_group.ldf