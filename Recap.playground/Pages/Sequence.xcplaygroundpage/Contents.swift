/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)

// No borders
canvas.drawShapesWithBorders = false

// Draw the red circle
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 100, centreY: 150, width: 175, height: 175)

// Draw the yellow rounded rectangle
//
// NOTE: Used this document to find accurate colour...
// http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf
// ... and this app ...
// http://russellgordon.ca/rsgc/ics/c3d.zip
//
canvas.fillColor = Color(hue: 43, saturation: 100, brightness: 94, alpha: 100)
canvas.drawRoundedRectangle(centreX: 325, centreY: 200, width: 125, height: 175, borderWidth: 1, xRadius: 25, yRadius: 25)

// Draw the blue rectangle
canvas.fillColor = Color(hue: 222, saturation: 100, brightness: 100, alpha: 75)
canvas.drawRectangle(centreX: 225, centreY: 190, width: 140, height: 300)

// Define the co-ordinates for the triangle
var points : [NSPoint] = [] // Create an empty list, or array, of points
points.append(NSPoint(x: 340, y: 325))
points.append(NSPoint(x: 490, y: 325))
points.append(NSPoint(x: 415, y: 100))

// Draw the triangle using the drawCustomShape method of the canvas object
canvas.fillColor = Color(hue: 88, saturation: 100, brightness: 75, alpha: 75)
canvas.drawCustomShape(with: points)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
