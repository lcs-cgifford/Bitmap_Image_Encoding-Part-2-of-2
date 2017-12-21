//: [Previous](@previous) / [Next](@next)
//: # Decoding an Image
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

// Copy your encoded image string here...
let encodedBitmap = """
w7,R5,w2,P3,w3
w6,R9,P2,w3
w6,Q3,P2,Q1,P1,w1,R3,w3
w5,Q1,P1,Q1,P3,Q1,P3,R2,w3
w5,Q1,P1,Q2,P3,Q1,P3,R1,w3
w5,Q2,P4,Q4,R1,w4
w7,P7,R2,w4
w1,P3,R4,B1,R3,B1,R2,w2,Q1,w2
w1,P3,R5,B1,R3,B1,w2,Q2,w2
w2,P1,w3,R3,B4,Y1,B2,Q2,w2
w7,B3,Y1,B5,Q2,w2
w5,Q2,B9,Q2,w2
w4,Q3,B6,w7
w4,Q3,B6,w5
w4,Q3,B6,w7
w4,Q2,w9,w5
w9,Q8,w3
w9,Q1,G6,Q1,w3
w9,Q1,Q7,w4
w9,w1,Q1,G4,Q1,w3
w9,w1,Q1,G4,Q1,w4
w9,w1,Q1,G4,Q1,w4
"""

// Make a canvas
let canvas = Canvas(width: 402, height: 402)

// Make a grid
// NOTE: The code that builds the grid was tucked away in something called a *function* to keep things tidy. We'll learn about functions later.
drawGrid(on: canvas)

// Start drawing at left
var x = 0

// Set the size of a "pixel"
let cellSize = 20

// Keep track of current colour
var currentColor = "white"

// Start drawing at top of grid
var y = canvas.height - cellSize - 2

// Store the current number of pixels to draw
var drawThisManyPixels = 0

// Iterate over each character in the encoded bitmap string
for character in encodedBitmap {
    
    // Print out the current character
    print("current character is: \(character)")
    
    // Set colour at start of a line
    if character == "w" {
        
        canvas.fillColor = Color.white
        currentColor = "white"
        
    } else if character == "," {
        
        // We have a new number
        // Are we past the first pixel in a row?
        if x > 0 {
            
            // Toggle the pixel colour
            if currentColor == "white" {
                currentColor = "white"
                canvas.fillColor = Color.red
            } else {
                currentColor = "black"
                canvas.fillColor = Color.black
            }
            
        }
        
    } else if character  == "R" {
        canvas.fillColor = Color.red
    } else if character == "P" {
        canvas.fillColor = Color.init(hue: 10, saturation: 50, brightness: 100, alpha: 100)
    }else if character == "Q" {
        canvas.fillColor = Color.black
    } else if character == "G" {
        canvas.fillColor = Color.green
    }else if character == "B" {
        canvas.fillColor = Color.blue
    }else if character == "Y" {
        canvas.fillColor = Color.yellow
    } else if character == "\n" {
        
        // We are on a new line, so reduce the vertical position
        // and reset the horizontal position
        y = y - cellSize
        x = 0
        
        // Default colour after new line is white
        canvas.fillColor = Color.white
        currentColor = "white"
        
    } else {
        
        // Get the new number of pixels to draw
        drawThisManyPixels = Int(String(character))!
        
        // Draw the pixels
        for _ in 1...drawThisManyPixels {
            
            // Draw the enlarged "pixel"
            canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: cellSize, height: cellSize)
            
            // Increase x so that the next pixel is drawn to the right of this one
            x += cellSize
            
        }
        
    }
    
}

/*:
 ### Check the results
 Does the output match what you'd expect, based on the values in the encoded string?
 
 How do you know?
 
 Write your ideas in the code comment below.
 */

// I notice that...
// I know this because...

/*:
 ## Extension
 Now that you have an understanding of how if statements (also called *selection* statements or *conditional* statements) work... extend this code.
 
 How could you adjust the rules so that pixels can be rendered in colour?
 
 What additions or changes would you need to make to the code above?
 
 Work with a partner to discuss possibilities and then make the changes in code.
 */


/*:
 Now, **remember to commit and push your work**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
