# Nim: Modern Programlama Dili ile Yüksek Performans ve Verimlilik

## Giriş

Son yıllarda derlenmiş diller yeniden popülerlik kazandı. 
Bunun arkasındaki nedenler oldukça açık: Derlenmiş diller, yorumlanmış dillere kıyasla genellikle daha iyi performans sunar ve 
statik tip kontrolü sayesinde daha kaliteli programlar üretir. 
Nim, bu yeni dalganın ötesine geçerek karmaşık problemleri ifade etmek için güçlü bir makro sistemi sunar.

## Yüksek Performans ve Doğrudan CPU Erişimi

Nim, sanal makinaya bağımlı olmadan doğrudan CPU üzerinde çalışan bir binary(ikili) dosya üretir. 
Bu sayede, kodunuzdan maksimum performansı elde etme imkanı sağlar. 
Herhangi bir işletim sistemine ihtiyaç duymadan çalışabilen uygulamalar geliştirilebilir.

## Statik Tip Sistemi ile Güvenilirlik

Nim’in kullanıcı dostu statik tip sistemi, hataları erken aşamada yakalar. 
Küçük bir yazım hatasının üretimi bozmayacağını ve büyük bir yeniden yapılandırmanın korkutucu olmadığını garanti eder. 
Ayrıca, az yazmanız yeterlidir; type inference and generics (tip çıkarımı ve jenerikler) sayesinde kod yazmak oldukça rahattır. 
Dinamik dillerdeki gibi her tür, derleme zamanında bilinir ve hem çalışma hızı hem de bellek kullanımı için optimize edilir.

## Güçlü Meta Programlama ve Makrolar

Nim’in güçlü makro sistemi, onu diğer derlenmiş dillerden ayıran önemli bir özelliktir. 
Deep and component (derin ve bileşen) bazlı alan spesifik diller tasarlamak için güçlü şablonlar ve makrolar sunar.

## Esnek Bellek Yönetimi

Nim, düşük gecikmeli ve gerçek zamanlı sistemler için gereken kontrolü sağlayan ARC (Automatic Reference Counting) adında "takılabilir" bir bellek yönetim sistemi sunar. 
Bu özellik, oyun ve gömülü geliştirme için idealdir ve özel bellek yönetimi ile de iyi entegre olur.

## Çoklu Platform Desteği

Nim, herhangi bir işletim sistemine bağlı olmayan cross-platform (çapraz platform) bir dildir. 
Linux, Mac ve Windows üzerinde rahatça çalışırken, mobil iOS ve Android uygulamaları da geliştirebilirsiniz. 
Web üzerinde ise JavaScript veya WASM ile kullanılabilir.

## Küçük Makine Kodu ile Gömülü Programlama

Gömülü programlama için üretilen makine kodunun boyutu önemlidir; Nim bu konuda da öne çıkar. 
Nim derleyicisi, statik bağlamaya odaklanarak kullanılmayan kodu prun eder; gerektiğinde makro sistemi ile gereken içgörü yeteneklerini sağlar.

## Verimlilik Artışı

Nim, iyi tasarlanmış bir standart kütüphane ve çok sayıda üçüncü parti paket sunarak verimliliği artırır. 
Standart kütüphane, hash tabloları, sıralama algoritmaları, güçlü koleksiyonlar, işletim sistemi wrappers(sarmalayıcılar), string parsing(ayrıştırma), 
Unicode ve zaman yönetimi gibi konuları kapsar.

## Modern Yazılım Geliştirme İhtiyaçları

Yazılım giderek daha karmaşık hale geliyor ve modern bir programlama dili bu durumu yansıtmalıdır. 
Artık "basit" olamaz; birçok özellik günümüzde beklenen standartlar haline gelmiştir. 
Bu da bir dili öğrenmenin büyük bir zaman yatırımı gerektirdiği anlamına gelir. 
Nim, her şey için kullanılabilir tek bir tutarlı dil sunar ve hemen hemen her platformda iyi çalışır: 
Web tarayıcılarında, neredeyse her işletim sisteminde, küçük gömülü cihazlarda ve hatta GPU'larda.

# Nim Programlama Dili: Tarihçe ve Teori

## Giriş

Nim, çok amaçlı bir programlama dili olup, Ada, Modula-3, C++, Python ve Lisp gibi dillerden ilham almıştır. 
Bu dilin en önemli özellikleri arasında tip ve kaynak güvenliği, meta programlama ve okunabilirliği sözdizimsel kolaylıkla birleştirme yer almaktadır. 
Nim’in temel odak noktası "imperatif programlama" olsa da, aşağıdaki programlama paradigmalarını da desteklemektedir:

Not : İmperative yöntemde açıklayıcı emirlerle işlemi detaylı bir şekilde gerçekleştiririz. Declarative yöntemde sadece yapacağınız şeyi anlatırsınız.

## Programlama Paradigmaları

1. Fonksiyonel Programlama

Nim, fonksiyonları birinci sınıf varlıklar olarak kabul eder ve değişkenlik (mutability) kısıtlanabilir. 
Bu, daha güvenli ve tahmin edilebilir kod yazmayı sağlar.

2. Nesne Yönelimli Programlama

Nim, kalıtım (inheritance / Miras Alma) ve dinamik bağlama (dynamic binding) gibi nesne yönelimli programlama kavramlarını destekler. 
Bu sayede, karmaşık sistemler kolayca modelleyebilir.

Bu inheritance ve dynamic binding konusunda kafanız karışıyorsa anlamanız için bir kaç python kodu yazacağım.

İnheritance :

```python
# Ana sınıf (base class)
class Araba:
    def __init__(self, marka, model, renk):
        self.marka = marka
        self.model = model
        self.renk = renk

    def ozellikleri_goster(self):
        print("Marka:", self.marka)
        print("Model:", self.model)
        print("Renk:", self.renk)

# Alt sınıf (child class) - Araba sınıfından miras alan Altas modeli
class Altas(Araba):
    def __init__(self, marka, model, renk, motor_gucu):
        # Üst sınıfın (base class) __init__() metodunu çağırarak miras alınan özellikleri kullanıyoruz
        super().__init__(marka, model, renk)
        self.motor_gucu = motor_gucu

    # Ana sınıfta olmayan özel bir method
    def ozellikleri_goster(self):
        # Üst sınıftan miras aldığımız methodu çağırarak tekrar kullanıyoruz
        super().ozellikleri_goster()
        print("Motor Gücü:", self.motor_gucu)

# Araba sınıfından bir örnek oluşturuyoruz
araba = Araba("Toyota", "Corolla", "Beyaz")
araba.ozellikleri_goster()

print("------------------------")

# Altas sınıfından bir örnek oluşturuyoruz
altas = Altas("Volkswagen", "Altas", "Siyah", "150 HP")
altas.ozellikleri_goster()
```

Dynamic binding :

```python
class Sekil:
    def ciz(self):
        print("Şekil çiziliyor")

class Daire(Sekil):
    def ciz(self):
        print("Daire çiziliyor")

class Ucgen(Sekil):
    def ciz(self):
        print("Üçgen çiziliyor")

sekil1 = Daire()
sekil2 = Ucgen()

sekil1.ciz()  # Daire nesnesi olduğu için Daire sınıfının ciz() metodu çağrılır
sekil2.ciz()  # Üçgen nesnesi olduğu için Üçgen sınıfının ciz() metodu çağrılır
```

3. Genel Programlama

Nim, özel konteyner türlerinin kolay ve verimli bir şekilde uygulanmasına olanak tanır. 
Bu, veri yapılarını özelleştirmek isteyen geliştiriciler için büyük bir avantajdır.

4. Asenkron Programlama

Nim, hafif iş parçacıkları (lightweight threads) kullanarak çok sayıda istemciyi engellemeden destekler. 
Bu özellik, yüksek performanslı ağ uygulamaları geliştirmek için idealdir.

Örnek python'da :

```python
import asyncio

async def task1():
    print("Task 1 başladı")
    await asyncio.sleep(2)
    print("Task 1 bitti")

async def task2():
    print("Task 2 başladı")
    await asyncio.sleep(1)
    print("Task 2 bitti")

async def main():
    await asyncio.gather(task1(), task2())

asyncio.run(main())
```


5. Meta Programlama

Nim, programın yapısı üzerinde yansıma (reflection) desteği sunar ve güçlü program dönüşümleri gerçekleştirilmesine olanak tanır. 
Bu dönüşümler, yalnızca derleme zamanında yapılabileceklerle sınırlıdır. 
Bu kısıtlamalar, programın yerel mantığını korumayı sağlar; en güçlü dönüşümleri mümkün kılan makro yapısı, kodun alakasız bölümlerini dönüştüremez.

