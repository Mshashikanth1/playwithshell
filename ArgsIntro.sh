echo $1  #print  the first arg
echo $0   #print file name
echo $#   #print num cmdline args
echo $*    #print all the cmd args


#simulate using ./bashfile.sh 1 3 0 9 0 0
#out put be like :
# 1
# bashfile.sh
# 6
# 1 3 0 9 0 0
