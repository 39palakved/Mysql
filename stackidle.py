n = int (input("enter how many elements you want in list"))
stack = [None]*n
top = -1
def push(item):
    global top
    if(top==n):
        print("stackoverflow")
    else:
        top = top +1
        stack[top] = item
        print(stack[top])
def pop():
    global top
    if(top==-1):
        print("stackunderflow")
    else:
        top = top-1
push('palak')
push('pallavi')
push('akshavi')
push('sunita')
push('prem')
push('ajay')
pop()
push('archi')
