stack=[]
def min_square(a,b):
	result =0
	rem = 0

	if a <b:
		
		c=a
		a=b
		b=c

	while b>0:
		print "\n\nsquare to be cut>>> "+str(b) + "x" +str(b)
		result += a/b
		cut=a/b
		stack.append(cut)
		rem = a%b
		a=b
		b=rem
		print "the no. of squares: "+str(cut)
		
		print "remain>>>: "+ str(b) +"x"+ str(a)
		
	return result

def pr():
	print"            _                        "
	print"            \`*-.                    "
	print"             )  _`-.                 "
	print"            .  : `. .                "
	print"            : _   '  \               "
	print"            ; *` _.   `*-._          "
	print"            `-.-'          `-.       "
	print"              ;       `       `.     "
	print"              :.       .        \    "
	print"              . \  .   :   .-'   .   "
	print"              '  `+.;  ;  '      :   "
	print"              :  '  |    ;       ;-. "
	print"              ; '   : :`-:     _.`* ;"
	print"     [bye] .*' /  .*' ; .*`- +'  `*'  "
	print"           `*-*   `*-*  `*-*'        "


if __name__ == '__main__':

	print"____________________________________________________________________"
	print"      ________             _,'|              _.-''``-...___..--';)   "
	print"     |        |           /_  \ '.     __..-' ,      ,--...--'''     "
	print"     |        |          <\     .`--'''       `     /'              "
	print"     |        |           `-';'               ;   ; ;               "
	print"     |        |     __...--''     ___...--_..'  .;.'                "
	print"_____----------____(,__....----'''       (,..--''   SQUARE CUT _____"

	while True:
		x=input("\nenter width: ")
		y=input("enter height: ")
		ans=str(min_square(x,y))
		print "\n\n squares:" + str(stack)
		print"\n\nthe answer is: "
		print"            _                        "
		print"            \`*-.                    "
		print"             )  _`-.                 "
		print"            .  : `. .                "
		print"            : _   '  \               "
		print"            ; *` _.   `*-._          "
		print"            `-.-'          `-.       "
		print"              ;       `       `.     "
		print"              :.       .        \    "
		print"              . \  .   :   .-'   .   "
		print"              '  `+.;  ;  '      :   "
		print"              :  '  |    ;       ;-. "
		print"              ; '   : :`-:     _.`* ;"
		print"     [ "+ans+" ] .*' /  .*' ; .*`- +'  `*'  "
		print"           `*-*   `*-*  `*-*'        "
		stack =[]
		choice = raw_input("\nPress <any key> to try again, Type <N> to stop: ")
		if choice == "N":
			pr()
			break
	
	