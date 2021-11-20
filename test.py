
import re
def func(a):

	string_check= re.compile('[@_!#$%^&*()<>?/\|}{~:]') 
	print(string_check.search(a))
	if(string_check.search(a) != None):
		last_char = a[-1]
		print(last_char)
		x = re.search('language$', last_char)
		print("x:",x)
		if(string_check.search(last_char) != None):
			val_return=a,'The line ends with special char'
			return val_return	
		val_return=a,"Yes this is word comes with non char"
		return val_return
	else:
		val_return=a,"No is char only"
		return val_return
	

print(func("Hello! world"))
print(func("hello world !"))
