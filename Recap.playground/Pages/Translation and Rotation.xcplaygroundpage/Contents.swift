/*:
 [Previous](@previous) / [Next](@next)
 
 # Translation and Rotation
 
 In addition to new shapes, it is now possible to *translate* the origin to a new position.
 
 Run the code that currently exists on this page.
 
 You will notice that the origin of the co-ordinate system is currently in the lower left corner, producing this image:
 
 ![lower_left.png](lower_left.png "Quadrant 1")
 
 Now, add the following code *before* the axes are drawn on the canvas.
 
    canvas.translate(byX: 200, byY: 200)
 
 What happens?
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

// Draw slightly thicker lines
canvas.defaultLineWidth = 4

// Translate the origin
//
// OBSERVATION: I see that the origin of the canvas has moved.
//              nothing else has changed except the line of code added below.
//              I've added comments below to indicate what's happening
canvas.translate(byX: 200, byY: 200)

// Draw the vertical axis and label it
canvas.drawLine(fromX: 0, fromY: -400, toX: 0, toY: 400)    // Since origin is shifted 200 over, this draws 
                                                            // in the middle of the screen
canvas.drawText(message: "y", size: 24, x: 10, y: 375)

// Draw the horizontal axis and label it 
canvas.drawLine(fromX: -400, fromY: 0, toX: 400, toY: 0)   // Since origin is shifted 200 up, this draws
                                                           // in the middle of the screen
canvas.drawText(message: "x", size: 24, x: 375, y: 10)

/*:
 ## Challenge 1

 See if you can adjust the code so that this output is produced instead:

 ![centre.png](centre.png "All quadrants")

 ## Challenge 2
 
 Inspect the new methods available on the Canvas class using auto-complete.
 
 See if you can adjust the code so that this output is produced:
 
 ![rotated_centre.png](rotated_centre.png "Rotated all quadrants")

 What does this imply about how *rotation* works? Make notes about this in your sketchbook.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
