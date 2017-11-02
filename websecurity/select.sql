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
#查找所有包含拼音的密码
SELECT passwd FROM csdn WHERE passwd regexp "^['a''ai''an''ang''ao''ba''bai''ban''bang''bao''bei''ben''beng''bi''bian''biao''bie''bin''bing''bo''bu''ca''cai''can''cang''cao''ce''cen''ceng''cha''chai''chan''chang''chao''che''chen''cheng''chi''chong''chou''chu''chua''chuai''chuan''chuang''chui''chun''chuo''ci''cong''cou''cu''cuan''cui''cun''cuo''da''dai''dan''dang''dao''de''den''dei''deng''di''dia''dian''diao''die''ding''diu''dong''dou''du''duan''dui''dun''duo''e''ei''en''eng''er''fa''fan''fang''fei''fen''feng''fo''fou''fu''ga''gai''gan''gang''gao''ge''gei''gen''geng''gong''gou''gu''gua''guai''guan''guang''gui''gun''guo''ha''hai''han''hang''hao''he''hei''hen''heng''hong''hou''hu''hua''huai''huan''huang''hui''hun''huo''ji''jia''jian''jiang''jiao''jie''jin''jing''jiong''jiu''ju''juan''jue''jun''ka''kai''kan''kang''kao''ke''ken''keng''kong''kou''ku''kua''kuai''kuan''kuang''kui''kun''kuo''la''lai''lan''lang''lao''le''lei''leng''li''lia''lian''liang''liao''lie''lin''ling''liu''long''lou''lu''lü''luan''lue''lüe''lun''luo''m''ma''mai''man''mang''mao''me''mei''men''meng''mi''mian''miao''mie''min''ming''miu''mo''mou''mu''na''nai''nan''nang''nao''ne''nei''nen''neng''ng''ni''nian''niang''niao''nie''nin''ning''niu''nong''nou''nu''nü''nuan''nüe''nuo''nun''o''ou''pa''pai''pan''pang''pao''pei''pen''peng''pi''pian''piao''pie''pin''ping''po''pou''pu''qi''qia''qian''qiang''qiao''qie''qin''qing''qiong''qiu''qu''quan''que''qun''ran''rang''rao''re''ren''reng''ri''rong''rou''ru''ruan''rui''run''ruo''sa''sai''san''sang''sao''se''sen''seng''sha''shai''shan''shang''shao''she''shei''shen''sheng''shi''shou''shu''shua''shuai''shuan''shuang''shui''shun''shuo''si''song''sou''su''suan''sui''sun''suo''ta''tai''tan''tang''tao''te''teng''ti''tian''tiao''tie''ting''tong''tou''tu''tuan''tui''tun''tuo''wa''wai''wan''wang''wei''wen''weng''wo''wu''xi''xia''xian''xiang''xiao''xie''xin''xing''xiong''xiu''xu''xuan''xue''xun''ya''yan''yang''yao''ye''yi''yin''ying''yo''yong''you''yu''yuan''yue''yun''za''zai''zan''zang''zao''ze''zei''zen''zeng''zha''zhai''zhan''zhang''zhao''zhe''zhei''zhen''zheng''zhi''zhong''zhou''zhu''zhua''zhuai''zhuan''zhuang''zhui''zhun''zhuo''zi''zong''zou''zu''zuan''zui''zun''zuo']+$" limit 20000,10000;
