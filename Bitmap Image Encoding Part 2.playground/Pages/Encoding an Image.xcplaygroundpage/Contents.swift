//: [Previous](@previous) / [Next](@next)
//: # Encoding an Image
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Choose an image
 Before we begin, you need an image to encode.
 
[Create your own](https://drive.google.com/file/d/0B28WCEVcCDJWQUM3RVlvdEVzVVk/view) (a hard copy is available if you are reading this in class).
 
 Now, finish declaring the multiline string below.
 
 This string will contain your encoded image.
 
 The codes currently provided will result in the letter "a".
 */
// Write the encoding for your image here
let encodedBitmap = """
w7,R5,w2,P3,w3
w6,R9,P2,w3
w6,b3,P2,Bl1,P1,w1,R3,w3
w5,b1,P1,b1,P3,bl1,P3,R2,w3
w5,b1,P1,b2,P3,R1,P3,b1,w3
w5,b2,P4,bl4,R1,w4
w7,P7,R2,w4
w1,P3,R4,B1,R3,B1,R2,w2,b1,w2
w1,P3,R5,B1,R3,B1,w2,b2,w2
w2,P1,w3,R3,B4,Y1,B2,b2,w2
w7,B3,Y1,B5,b2,w2
w5,b2,B9,b2,w2
w4,b3,B6,w7
w4,b2,w9,w5
w4,b3,B6,w7
w4,b2,w9,w5
w9,bl8,w3
w9,bl1,G6,bl1,w3
w9,bl1,bl6,w4
w9,w1,G1,bl1,w3
w9,w1,bl1,G4,bl1,w4
w9,w1,bl1,G4,bl1,w4
w9,w1,bl1,G4,bl1,w4
"""

/*:
 ## Printing individual characters of a string
 
 Just like a single-line string, we can use a *for-in* loop to examine each individual character of a multi-line string.
 
 In this case, we'll print each character on it's own line.
 
 Look carefully at the output.
 
 How are newline characters rendered in the output?
 */
// Uncomment the next three lines of code to see how they work
for character in encodedBitmap {
    print(character)
}

// I notice that newline characters are rendered as an...


/*:
 Now, **remember to commit and push your work**.
 */

