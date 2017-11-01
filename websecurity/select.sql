#全为数字
SELECT count(id) AS count1 FROM csdn where passwd regexp "^[0-9]+$";  

#全为字母
SELECT count(id) AS count2 FROM csdn where passwd regexp "^[A-Za-z]+$";

#全为特殊字符
SELECT count(id) AS count3 FROM csdn where passwd regexp "^[^A-Za-z0-9]+$";

#数字和字母的组合
SELECT count(id) AS count41 FROM csdn where passwd regexp "^[0-9]+[a-zA-Z]+[0-9a-zA-Z]*$|^[a-zA-Z]+[0-9]+[0-9a-zA-Z]*$";
SELECT count(id) AS count42 FROM csdn where passwd regexp "(^[a-zA-Z0-9]*[0-9]{1}[a-zA-Z]{1}[a-zA-Z0-9]*$)|(^[a-zA-Z0-9]*[a-zA-Z]{1}[0-9]{1}[a-zA-Z0-9]*$)";
SELECT count(id) AS count43 FROM csdn where passwd  not regexp "[^0-9a-zA-Z]" and passwd regexp "[a-zA-Z]" and passwd regexp "[0-9]";

#字符和数字
SELECT count(id) AS count5 FROM csdn where passwd  not regexp "[a-zA-Z]" and passwd regexp "[^A-Za-z0-9]" and passwd regexp "[0-9]";

#字母和符号组合
SELECT count(id) AS count6 FROM csdn where passwd  not regexp "[0-9]" and passwd regexp "[^A-Za-z0-9]" and passwd regexp "[A-Za-z]";

#字母数字符号的组合
SELECT count(id) AS count7 FROM csdn where passwd  regexp "[0-9]" and passwd regexp "[^A-Za-z0-9]" and passwd regexp "[A-Za-z]";

#按照密码长度来统计密码数量，看看密码长度是一个什么样的分布
SELECT length(passwd) AS length,count(*) AS count FROM csdn GROUP BY length(passwd) ORDER BY length ASC;