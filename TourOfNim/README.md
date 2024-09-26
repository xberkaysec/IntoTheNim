# Nim Kurulumu

1. Nim'i İndirin ve Kurun

Nim programlama dilini kullanmaya başlamak için öncelikle sisteminize Nim'i yüklemeniz gerekmektedir. 
Nim'in en güncel sürümünü [Nim'in resmi web sitesinden](https://nim-lang.org/) indirebilirsiniz. 
İlgili işletim sisteminize uygun olan yükleyiciyi seçin ve talimatları takip ederek kurulumu tamamlayın.

2. Nimble Paket Yöneticisi

Nim kurulumunuzla birlikte gelen Nimble, Nim için bir paket yöneticisidir. 
Nimble, ek kütüphaneleri kolaylıkla yüklemenizi sağlar. 
Örneğin, grafik işlemleri için gerekli olan pixels kütüphanesini yüklemek için aşağıdaki komutu terminal veya komut istemcisine girin:

```bash
nimble install pixels
```

Bu komut, pixels kütüphanesini sisteminize yükleyecek ve kullanımınıza hazır hale getirecektir.

# Temel Kavramlar

## 1. Grafik Primitifleri ile Şekiller Oluşturma

Nim dilinde temel grafik işlemleri yapabilmek için bazı temel kavramları öğrenmeniz gerekecek. 
Bu bölümde, putPixel prosedürünü kullanarak grafik üzerinde nasıl şekiller oluşturabileceğinizi göstereceğiz.

## putPixel Prosedürü

putPixel prosedürü, belirli bir koordinatta bir piksel yerleştirmek için kullanılır. 
Bu prosedürün nasıl kullanılacağını aşağıdaki örneklerle açıklayalım:

```nim
import pixels  # 1

putPixel(5, 9)  # 2
putPixel(11, 18, Red)  # 3
```

- 1. pixels kütüphanesini içe aktararak putPixel prosedürünü kullanabiliriz.
- 2. (5, 9) koordinatına varsayılan beyaz renk (default: white) ile bir piksel yerleştirir.
- 3. (11, 18) koordinatına kırmızı (Red) bir piksel yerleştirir.

Resim : 

![Resim](https://i.ibb.co/2NLkYx6/Nim-Project-1.png)

![Resim](https://i.ibb.co/x3HKV3b/resim-2024-09-26-141518398.png)

Çıktı :

![Çıktı](https://i.ibb.co/4pb0hTT/resim-2024-09-26-141641149.png)
