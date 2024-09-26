# Çizim Temelleri: Doğru Çizme Yöntemleri

## 1. Doğru Nedir?

Bir doğru, bitişik noktaların bir dizisidir. 
Bu yazıda, iki temel doğru türüne odaklanacağız: Yatay ve Dikey doğrular. 
Bu doğruları nokta nokta çizerken, yalnızca bir koordinat değişirken diğeri sabit kalır.

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

## 3. Yatay ve Dikey Doğru Çizimi

Bir doğru, başlangıç ve bitiş noktasıyla ya da bir başlangıç noktası ile uzunluğu ve yönü ile tanımlanabilir. Her iki yaklaşımı da inceleyeceğiz.

1. Yatay Doğru Çizimi

Yatay bir doğru çizmek için, y koordinatı sabit kalırken x koordinatını değiştiririz. Örneğin:

- Başlangıç noktası: (x1, y)
- Bitiş noktası: (x2, y)

Bu durumda, y değeri sabit kalır ve x değeri başlangıç noktasından bitiş noktasına kadar artar.

2. Dikey Doğru Çizimi

Dikey bir doğru çizmek için ise, x koordinatı sabit kalırken y koordinatını değiştiririz. Örneğin:

- Başlangıç noktası: (x, y1)
- Bitiş noktası: (x, y2)

Bu durumda, x değeri sabit kalır ve y değeri başlangıç noktasından bitiş noktasına kadar artar.
