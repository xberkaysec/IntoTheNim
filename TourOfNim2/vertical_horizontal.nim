import pixels

type 
    Point = object
        x: int
        y: int

proc horizontalLine(start: Point; length: Positive) = 
  for delta in 0 .. length: 
    putPixel(start.x + delta, start.y) 

proc verticalLine(start: Point; length: Positive) =
    for delta in 0 .. length:
        putPixel(start.x, start.y + delta)

let p = Point(x: 10, y: 10)
horizontalLine(p, 80)
verticalLine(p, 80) 
