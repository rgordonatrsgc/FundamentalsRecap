/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 600, height: 400)

// Draw a grid so I can plan out sizes
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 50)   // Light grey
for x in stride(from: 0, through: canvas.width, by: 20) {                   // Vertical lines
    if x % 80 == 0 {
        canvas.defaultLineWidth = 2
    } else {
        canvas.defaultLineWidth = 1
    }
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: canvas.height)
}
for y in stride(from: 0, through: canvas.height, by: 50) {                  // Horizontal lines
    if y % 100 == 0 {
        canvas.defaultLineWidth = 2
    } else {
        canvas.defaultLineWidth = 1
    }
    canvas.drawLine(fromX: 0, fromY: y, toX: canvas.width, toY: y)
}

// No borders
canvas.drawShapesWithBorders = false

// Save colours in objects (making code more readable below)
let customBrown = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
let customOrange = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
let customYellow = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)

// LEFT UPPER CIRCLE

// Draw brown circle
canvas.fillColor = customBrown
canvas.drawEllipse(centreX: 40, centreY: 350, width: 70, height: 70)

// Draw orange circle
canvas.fillColor = customOrange
canvas.drawEllipse(centreX: 40, centreY: 350, width: 50, height: 50)

// Draw yellow circle
canvas.fillColor = customYellow
canvas.drawEllipse(centreX: 40, centreY: 350, width: 30, height: 30)

// Draw white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 40, centreY: 350, width: 10, height: 10)

// RIGHT UPPER CIRCLE

// Draw yellow circle
canvas.fillColor = customYellow
canvas.drawEllipse(centreX: 80, centreY: 250, width: 70, height: 70)

// Draw orange circle
canvas.fillColor = customOrange
canvas.drawEllipse(centreX: 80, centreY: 250, width: 50, height: 50)

// Draw brown circle
canvas.fillColor = customBrown
canvas.drawEllipse(centreX: 80, centreY: 250, width: 30, height: 30)

// Draw white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 80, centreY: 250, width: 10, height: 10)

// RIGHT LOWER CIRCLE

// Draw yellow circle
canvas.fillColor = customYellow
canvas.drawEllipse(centreX: 80, centreY: 150, width: 70, height: 70)

// Draw orange circle
canvas.fillColor = customOrange
canvas.drawEllipse(centreX: 80, centreY: 150, width: 50, height: 50)

// Draw brown circle
canvas.fillColor = customBrown
canvas.drawEllipse(centreX: 80, centreY: 150, width: 30, height: 30)

// Draw white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 80, centreY: 150, width: 10, height: 10)

// LEFT LOWER CIRCLE

// Draw brown circle
canvas.fillColor = customBrown
canvas.drawEllipse(centreX: 40, centreY: 50, width: 70, height: 70)

// Draw orange circle
canvas.fillColor = customOrange
canvas.drawEllipse(centreX: 40, centreY: 50, width: 50, height: 50)

// Draw yellow circle
canvas.fillColor = customYellow
canvas.drawEllipse(centreX: 40, centreY: 50, width: 30, height: 30)

// Draw white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 40, centreY: 50, width: 10, height: 10)

// DRAW CONNECTING RECTANGLES (UPPER)

// White
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 80, centreY: 300, width: 10, height: 100)

// Brown
canvas.fillColor = customBrown
canvas.drawRectangle(centreX: 70, centreY: 300, width: 10, height: 100)

// Orange
canvas.fillColor = customOrange
canvas.drawRectangle(centreX: 60, centreY: 300, width: 10, height: 100)

// Yellow
canvas.fillColor = customYellow
canvas.drawRectangle(centreX: 50, centreY: 300, width: 10, height: 100)

// White
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 40, centreY: 300, width: 10, height: 100)

// Yellow
canvas.fillColor = customYellow
canvas.drawRectangle(centreX: 30, centreY: 300, width: 10, height: 100)

// Orange
canvas.fillColor = customOrange
canvas.drawRectangle(centreX: 20, centreY: 300, width: 10, height: 100)

// Brown
canvas.fillColor = customBrown
canvas.drawRectangle(centreX: 10, centreY: 300, width: 10, height: 100)

// DRAW CONNECTING RECTANGLES (LOWER)

// White
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 80, centreY: 100, width: 10, height: 100)

// Brown
canvas.fillColor = customBrown
canvas.drawRectangle(centreX: 70, centreY: 100, width: 10, height: 100)

// Orange
canvas.fillColor = customOrange
canvas.drawRectangle(centreX: 60, centreY: 100, width: 10, height: 100)

// Yellow
canvas.fillColor = customYellow
canvas.drawRectangle(centreX: 50, centreY: 100, width: 10, height: 100)

// White
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 40, centreY: 100, width: 10, height: 100)

// Yellow
canvas.fillColor = customYellow
canvas.drawRectangle(centreX: 30, centreY: 100, width: 10, height: 100)

// Orange
canvas.fillColor = customOrange
canvas.drawRectangle(centreX: 20, centreY: 100, width: 10, height: 100)

// Brown
canvas.fillColor = customBrown
canvas.drawRectangle(centreX: 10, centreY: 100, width: 10, height: 100)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
