# write program to reverse each word in sentence and reverse the entire sentence
#input data:
#four score and seven years ago

#answer:
#oga sraey neves dna erocs ruof

s = input("input data:")

sa = s.split()
sa.reverse()

ans = ' '
for i in sa:
    ans = ans + i[::-1] + ' ' 
    
print(ans)
    