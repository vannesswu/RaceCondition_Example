# RaceCondition_Example

# non-Safe ATM output

start perform addNumber base 0 add 2  
start perform addNumber base 0 add 1  
start perform addNumber base 0 add 0  
start perform addNumber base 0 add 3  
**ready to write base from 0 to 10 and waiting...**     
start perform addNumber base 0 add 4  
start perform addNumber base 0 add 6  
**start perform write base to 10**    
start perform addNumber base 0 add 7  
start perform addNumber base 0 add 8  
start perform addNumber base 0 add 9  
start perform addNumber base 0 add 10  
finish perform addNumber 1 result 1  
finish perform addNumber 2 result 2  
finish perform addNumber 7 result 7  
finish perform addNumber 8 result 8  
finish perform addNumber 10 result 10  
**finish perform write base to 10**    
finish perform addNumber 4 result 14  
finish perform addNumber 0 result 10  
finish perform addNumber 9 result 19  
finish perform addNumber 6 result 16  
finish perform addNumber 3 result 13  
# Safe ATM output  
start perform addNumber base 0 add 3  
start perform addNumber base 0 add 0  
start perform addNumber base 0 add 2  
start perform addNumber base 0 add 1  
start perform addNumber base 0 add 4  
**ready to write base from 0 to 10 and waiting...**    
finish perform addNumber 1 result 1  
finish perform addNumber 4 result 4  
finish perform addNumber 2 result 2  
finish perform addNumber 0 result 0  
finish perform addNumber 3 result 3  
**start perform write base to 10**    
**finish perform write base to 10**    
start perform addNumber base 10 add 7  
start perform addNumber base 10 add 10  
start perform addNumber base 10 add 6  
start perform addNumber base 10 add 9  
start perform addNumber base 10 add 8
finish perform addNumber 7 result 17  
finish perform addNumber 10 result 20  
finish perform addNumber 6 result 16  
finish perform addNumber 8 result 18  
finish perform addNumber 9 result 19  
