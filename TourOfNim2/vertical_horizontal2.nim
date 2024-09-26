import pixels

type 
    Point = object
        x: int
        y: int
        z: int

proc horizontalLine(start: Point; length: Positive) = 
  for delta in 0 .. length: 
    putPixel(start.x + delta, start.y) 

proc verticalLine(start: Point; length: Positive) =
    for delta in 0 .. length:
        putPixel(start.x, start.y + delta)

proc verticalLine2(start: Point; length: Positive) =
    for delta in 0 .. length:
        putPixel(start.y, start.z + delta)

let p = Point(x: 10, y: 80, z: 80)
horizontalLine(p, 70)
verticalLine(p, 80)
verticalLine2(p, 80)
