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
    if x % 100 == 0 {
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

// LEFT UPPER CIRCLE

// Draw upper brown circle
canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 350, width: 80, height: 80)

// Draw upper orange circle
canvas.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 350, width: 60, height: 60)

// Draw upper yellow circle
canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 350, width: 40, height: 40)

// Draw upper white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 50, centreY: 350, width: 20, height: 20)

// LEFT LOWER CIRCLE

// Draw upper brown circle
canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 50, width: 80, height: 80)

// Draw upper orange circle
canvas.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 50, width: 60, height: 60)

// Draw upper yellow circle
canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
canvas.drawEllipse(centreX: 50, centreY: 50, width: 40, height: 40)

// Draw upper white circle
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 50, centreY: 50, width: 20, height: 20)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
