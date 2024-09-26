# Çizim Temelleri: Line(çizgi) Çizme Yöntemleri

## Line Nedir?

Bir line, bitişik noktaların bir dizisidir. 
Bu yazıda, iki temel doğru türüne odaklanacağız: Yatay ve Dikey line. 
Bu çizgileri nokta nokta çizerken, yalnızca bir koordinat değişirken diğeri sabit kalır.

## 2. Nokta Tanımı

Bir nokta, x ve y koordinatlarından oluşan bir nesnedir. 

Noktayı şu şekilde tanımlayıp kullanabiliriz:

```nim
import pixels

type
  Point = object 
  x: int 
  y: int

var p = Point(x: 5, y: 7) 
putPixel(p.x, p.y) 
```

1. Point nesnesi olarak bir nokta tanımlıyoruz.  
2. x ve y koordinatları tam sayılardır.  
3. p değişkeni, (5, 7) koordinatlarına sahip bir Point nesnesinin örneğidir.  
4. Bir nesnenin alanlarına nokta ile erişebiliriz; bu örnekte, p noktasının x ve y koordinatlarına p.x ve p.y ile erişiyoruz.

Resim : 

![Resim](https://i.ibb.co/sjF2zFF/Project-Canvas.png)

## 2.1.1. Bir Nokta, Uzunluk ve Yön Kullanarak Çizgi Çizimi

Bir çizgiyi tanımlamak için başlangıç noktası, uzunluğu ve yönü kullanabiliriz. 
Bu bilgilerle, bir çizgiyi piksel piksel çizebiliriz. 

1. Tanımlar

- Uzunluk: Pozitif bir tam sayı olmalıdır. Sıfır, bir noktayı temsil eder; negatif değer fiziksel olarak mümkün değildir.
- Yön: Yatay veya dikey olabilir.

Bu durumda, çizgileri her zaman soldan sağa (x koordinatını artırarak) veya üstten aşağıya (y koordinatını artırarak) oluşturmayı sınırlıyoruz.

## Yatay ve Dikey Çizgi Çizme Prosedürleri

Aşağıda, yatay ve dikey çizgileri çizen iki benzer prosedür tanımlanmıştır:

```nim
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
```

## Kod Açıklaması

1. Modül İçe Aktarma:

```nim
import pixels
```

Bu satır, pixels modülünü içe aktarır. 
Bu modül, ekrandaki piksellerin işlenmesi için gereken işlevleri sağlar.

2. Veri Tipi Tanımlaması:

```nim
type 
    Point = object
        x: int
        y: int
```

Bu bölümde, Point adında yeni bir veri tipi tanımlanır. 
Bu veri tipi, bir noktanın x ve y koordinatlarını tutmak için kullanılır.

3. Yatay Çizgi Çizme İşlevi:
   
```nim
proc horizontalLine(start: Point; length: Positive) = 
  for delta in 0 .. length: 
    putPixel(start.x + delta, start.y)
```

Bu işlev, verilen başlangıç noktasından (start) başlayarak, belirtilen uzunluk (length) kadar yatay bir çizgi çizer. 
Her bir nokta, putPixel fonksiyonu kullanılarak işlenir.

4. Dikey Çizgi Çizme İşlevi:

```nim
proc verticalLine(start: Point; length: Positive) =
    for delta in 0 .. length:
        putPixel(start.x, start.y + delta)
```

Bu işlev, verilen başlangıç noktasından (start) başlayarak, belirtilen uzunluk (length) kadar dikey bir çizgi çizer. 
Her bir nokta, putPixel fonksiyonu kullanılarak işlenir.

5. Örneklendirme ve Çizim:
   
```nim
let p = Point(x: 10, y: 10)
horizontalLine(p, 80)
verticalLine(p, 80)
```

Bu son bölümde, yeni bir Point nesnesi p oluşturulur ve koordinatları (10, 10) olarak ayarlanır. 
Daha sonra, horizontalLine ve verticalLine işlevleri, p noktasından başlayarak 80 piksel uzunluğunda yatay ve dikey çizgiler çizmek için çağrılır.

