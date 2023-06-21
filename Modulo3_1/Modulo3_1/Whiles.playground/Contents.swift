import UIKit

print("Repeat - While")

var i: Int = 1
let n: Int = 5

repeat{
    print(i)
    i += 1
}while(i<=n)

var level: Int = 0
print("While loop to display game level")
repeat{
    print("You have passed level \(level)")
    level += 1
}while(level<=n)
print("Levels Ends")
