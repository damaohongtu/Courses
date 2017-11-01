# <font color="red">Web Security密码泄露分析日志</font>
<a href="http://kaka2008.iteye.com/blog/1325375">1.参考</a>
<a href="http://www.cnblogs.com/hank-chen/p/6624299.html">2.pycharm 配置mysql</a>
### python3安装pymysql
<font color="red" size="4">首先一定要切换到Anaconda/Script目录下,执行以下命令</font><br>
- pip install pymysql
- 没有pip，安装pip<font color="red"></font>
### 正则表达式的书写
<a href="https://stackoverflow.com/questions/18317183/1139-got-error-repetition-operator-operand-invalid-from-regexp">1.MySQL正则表达式不能够解析（原因是正则表达式的解析引擎！！！）</a><br>
2.<a href="www.cnblogs.com/church/archive/2013/01/08/2851707.html">密码验证，密码强度正则表达式(这篇不可以相信！！！思路借鉴)</a><br>
3.<a href="https://dev.mysql.com/doc/refman/5.7/en/regexp.html">MySQL官方解释</a><br>

```sql
#密码构成元素分析（数字、字符、字母等）和结构分析
#全为数字
sql2_1="SELECT count(id) AS count1 FROM csdn where regexp '^[0-9]+$'"
#全为字母
sql2_2="SELECT count(id) AS count2 FROM csdn where passwd regexp'^[A-Za-z]+$'"
#全为符号
sql2_3="SELECT count(id) AS count3 FROM csdn where passwd regexp'^[^A-Za-z0-9]+$'"s

#密码构成元素分析（数字、字符、字母等）和结构分析
#全为数字
sql2_1="SELECT count(id) AS count1 FROM csdn where regexp '^[0-9]+$'"
#全为字母
sql2_2="SELECT count(id) AS count2 FROM csdn where passwd regexp'^[A-Za-z]+$'"
#全为符号
sql2_3="SELECT count(id) AS count3 FROM csdn where passwd regexp'^[^A-Za-z0-9]+$'"

#字母数字的结合
sql2_4="SELECT count(id) AS count4 FROM csdn where passwd  not regexp '[^0-9a-zA-Z]' and passwd regexp '[a-zA-Z]' and passwd regexp '[0-9]'"
#字母符号的结合
sql2_5="SELECT count(id) AS count5 FROM csdn where passwd  not regexp '[a-zA-Z]' and passwd regexp '[^A-Za-z0-9]' and passwd regexp '[0-9]'"
#数字符号的结合
sql2_6="SELECT count(id) AS count6 FROM csdn where passwd  not regexp '[0-9]' and passwd regexp '[^A-Za-z0-9]' and passwd regexp '[A-Za-z]'"

#字母数字符号结合
sql2_7="SELECT count(id) AS count7 FROM csdn where passwd  regexp '[0-9]' and passwd regexp '[^A-Za-z0-9]' and passwd regexp '[A-Za-z]'"

#换出饼状图
```



