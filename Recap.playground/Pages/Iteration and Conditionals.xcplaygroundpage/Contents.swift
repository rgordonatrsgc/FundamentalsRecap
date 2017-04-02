/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration and Conditionals
 
 Use what you have learned about translation and rotation to reproduce this image:
 
 ![flower.png](flower.png "Flower")
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

// MAKING A PLAN
//
// OK, clearly this task involves rotation.
// I noticed that the size of the ellipses changes (alternating large and small).
// The hue changes (from red around the spectrum and back to red).

// No borders
canvas.drawShapesWithBorders = false

// Translate the origin
canvas.translate(byX: 200, byY: 200)

// Use a loop to draw many ellipses
for i in stride(from: 0, to: 360, by: 10) {
    
    // Rotate the canvas by 10 degrees each time
    canvas.rotate(by: 10)
    
    // Draw an ellipse at current origin location (middle of canvas)
    canvas.drawEllipse(centreX: 0, centreY: 0, width: 20, height: 300)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
