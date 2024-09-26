import pixels

type
  Point = object 
    x: int 
    y: int

var p = Point(x: 5, y: 7) 
putPixel(p.x, p.y) 
