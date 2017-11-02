#-*-coding:utf-8-*-
#定义函数，输入密码和匹配模式
def hasCommonSubstr(passwd,mode):  
  
    lstr1 = len(passwd)  
    lstr2 = len(mode)  
    record = [[0 for i in range(lstr2+1)] for j in range(lstr1+1)]  # 多一位  
    maxNum = 0          # 最长匹配长度  
    p = 0               # 匹配的起始位  
  
    for i in range(lstr1):  
        for j in range(lstr2):  
            if passwd[i] == mode[j]:  
                # 相同则累加  
                record[i+1][j+1] = record[i][j] + 1  
                if record[i+1][j+1] > maxNum:  
                    # 获取最大匹配长度  
                    maxNum = record[i+1][j+1]  
                    # 记录最大匹配长度的终止位置  
                    p = i + 1  
                #公共子串长度大于等于3，返回真，否则返回假
                if maxNum>=3:
                    return True
    return False

#定义以下模式
#字母表顺序
KEYBOARD_0="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#顺序
#KEYBOARD_0="['QWERT''WERTY''ERTYU''ERTYU''RTYUI''TYUIO''YUIOP''ASDFG''SDFGH''DFGHJ''FGHJK''GHJKL''ZXCVB''XCVBN''CVBNM']"
KEYBOARD_1="QWERTYUIOPASDFGHJKLZXCVBNM"
#逆序
#KEYBOARD_1="['MNBVC''NBVCX''BVCXZ''LKJHG''KJHGF''JHGFD''HGFDS''GFDSA''POIUY''OIUYT''IUYTR''UYTRE''UYTRE''YTREW''TREWQ']"
KEYBOARD_2="MNBVCXZLKJHGFDSAPOIUYTREWQ"
#倾斜
KEYBOARD_3="QAZWSXEDCRFVTGBYHNUJMIKOLP"
#反倾斜
KEYBOARD_4="PLOKMIJNUHBYGVTFCRDXESZWAQ"
#数字键盘
KEYBOARD_NUM_0="0123456789"
KEYBOARD_NUM_1="9876543210"
KEYBOARD_NUM_2="7894561230"
KEYBOARD_NUM_3="3210654987"
KEYBOARD_NUM_4="0147258369"
KEYBOARD_NUM_5="753951357159"
