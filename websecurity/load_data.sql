use websecurity;
#将csv的第一列编号删除，使用auto_increment自动增加
load data local infile 'I:\\WebSecurity\\input\\plaintxt_yahoo\\yahoo.csv' into table yahoo fields terminated by ',' (email,passwd);  
load data local infile 'I:\\WebSecurity\\input\\plaintxt_csdn\\csdn.csv' into table csdn character set ASCII fields terminated by ',' (username,passwd,email);  