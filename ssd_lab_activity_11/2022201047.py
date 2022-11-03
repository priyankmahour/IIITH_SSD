import csv
from statistics import mean

data_source="lab_11_data.csv"


with open(data_source) as csv_file:

    reader=csv.reader(csv_file)
    fields=next(reader)

    count=0
    tuple_list=[]
    for tuple in reader:
        count+=1
        tuple_list.append(tuple)


ch=input("Enter character for  search: ")

op1=[]
for i in range(0,count):
    col=[]
    for j in range(0,len(tuple_list[0])-6):
        col.append(tuple_list[i][j])
    op1.append(col)


# print(op1)

# x will recieve a single row of op1 from filter
f=lambda x: float(x[6])>float(-3) 

op2=list(filter(f,op1))

# print(op2)


open_comma= lambda  x: float(x[1].replace(',',"")) 
high_comma= lambda  x: float(x[2].replace(',',"")) 
low_comma= lambda  x: float(x[3].replace(',',"")) 


avg_open=0.0
avg_high=0.0
avg_low=0.0

avg_open=list(map(open_comma,op2))
avg_high=list(map(high_comma,op2))
avg_low=list(map(low_comma,op2))

avg_open=sum(avg_open)/len(avg_open)

avg_high=sum(avg_high)/len(avg_high)

avg_low=sum(avg_low)/len(avg_low)

# print(avg_open)
# print(avg_high)
# print(avg_low)

f_ptr=open('avg_output.txt','w')
# f_ptr.truncate()

f_ptr.write(str(avg_open))
f_ptr.write("\n")
f_ptr.write(str(avg_high))
f_ptr.write("\n")
f_ptr.write(str(avg_low))
f_ptr.close()


get_symbol=lambda x: x[0]

symbol=list(map(get_symbol,op2))

# print(symbol)


res=[]
c=0
idx=[]
for x in symbol:
    if(ch==x[0]):
        res.append(x)
        idx.append(c)
    c+=1
# print(res)
# print(idx)

f_ptr=open('stock_output.txt','w')
# f_ptr.truncate()

for i in idx:
    f_ptr.write(' '.join(op2[i]))
    f_ptr.write("\n")

f_ptr.close()



