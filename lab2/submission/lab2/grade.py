from subprocess import check_output
import os


tests = [
   ("strlen", "helloworld"),
   ("strcmp","hello","hello"),
   ("strcmp","hello","nope"),
   ("strncmp","hello","hello","3"),
   ("strchr","something","m"),
   ("memmove",),
   ("strncat","jiayi","UTCS","2"),
   ("strrchr","I love peisen","e"),
   ("strstr","jiayi-zhou-jiayi","ayi"),
   ("memset",),
   ("strcat", "jiayi ", "UTCS"),
   ("strncpy","Jiayi","UTCS"),
   ("strcspn", "haystack has a needle","needle")
 ]


# As you do the assignment, you can put more tests into the tests array.
# Here's a few. Don't forget to separate them with a comma
#


   # ("strcmp", "hello", "hello"),
   # ("strcmp", "hello", "nope"),
   # ("strncmp", "hello", "hello", "3"),
   # ("strchr", "something", "m"),
   # ("memmove",),  #memmove test takes no parameter
   # ("memmove",),  #the comma inside the tuple is important
   # ("memset",),   #same with memset
   # ("strcspn", "haystack has a needle", "needle"),


for test in tests:
   cmd = ["./grade"] + list(test)
   print("test: {}    {}".format(test, "CORRECT" if "1" in str(check_output(cmd)) else "WRONG"))
#   print("test: {}    {}".format(test, str(check_output(cmd))))

# cmd = ["./grade"] + ["strcpsn", "xxxl", "hello"]
# print(str(check_output(cmd)))
# os.system(" ".join(cmd))
