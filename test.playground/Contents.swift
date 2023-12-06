import UIKit

print("Hii",10,12.25)

     

    //print statement using String Interpolation

var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)")

     


var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")


print("""
Hello
World!
""")

     

print ("Hello All,\rWelcome to Swift programming")

     


let  welcomeMessage : String = "Hello!"
   print(welcomeMessage , "All")

   






//Usually a print statement is terminated by a new line
//To separate the print statements other than new line
//we can use it as follows


print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")

    

     

//In general, the items in a print statement are separated by spaces, to print the items separated by something other than spaces, we use separator

print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

