# Želví rekurze

tags: samostatná práce, multiple choice questions, základní programátorské koncepty

## Abstrakt

Cílem aktivity je pochopení rekurze na názorném příkladu jednoduchého kódu s želví grafikou. Kód se krokuje na tabuli a studenti samostatně odhadují, jak bude vypadat výsledný obrázek, a v průběhu aktivity mohou své odpovědi měnit.

## Cíle

Student:

* procvičí rekurzi
* procvičí porozumění kódu
* vyzkouší vysvětlit fungování kódu spolužákovi

## Parametry

* Čas:
  * Domácí příprava cvičícího: 15 min, v případě úpravy zadání i 60 min
  * Domácí příprava studenta: 0 min
  * Vykonání aktivity: 
    * 2 min zadání úlohy
    * 2 min výběr první odpovědi
    * _k_ \*_ _\(3 min krokování a kreslení + 1 min opakovaný sběr odpovědí\)
    * 5 min diskuse ve skupině nad správným řešením
    * = 4 \* \(_k_+1\) + 5 min, kde _k_ je hloubka rekurze
* Účastníci:
  * Počet: bez omezení
  * Rozdělení do skupin: jednotlivci na začátku, časem i menší skupiny
    * Není potřeba mít rovnoměrné skupiny, spíš dát k sobě studenty s různými tipy na výsledný obrázek, aby se navzájem přesvědčovali argumenty.
* Prostředí:
  * Vhodný prostor: libovolná učebna s \(ideálně magnetickou\) tabulí
  * Rozdělení prostoru: v zásadě libovolné uspořádání, na začátku mohou sedět v lavicích, později bude dobré mít skupinky u sebe
* Proces: funkční prvky: čtení kódu, kritické posouzení kódu, diskuse, přesvědčování, pozorování
* Artefakty:
  * Materiály:
    * několik výtisků \(počet podle hloubky rekurze\) [kódu funkce](funkce.pdf) velkým fontem
    * _volitelně_ kód funkce menším fontem jako handout pro každého studenta
    * 4 velké obrázky, které budou sloužit jako možnosti k výběru správné odpovědi pro studenty \(jeden správný a 3 „věrohodné“ podobné obrázky\) \(např. [správný](strom_spravny.pdf), [distraktor1](strom_distraktor_1.pdf), [distraktor2](strom_distraktor_2.pdf), [distraktor3](strom_distraktor_3.pdf), [distraktor4](strom_distraktor_4.pdf)\)
  * Předměty:
    * whiteboard: fixy na whiteboard, magnety, fix na papír
    * křídová tabule: křídy, lepící páska, nůžky, fix na papír
    * flipchart: fix na papír, lepící páska, nůžky
* Dramaturgie:
  * Předmět: Python \(lze modifikovat do jiného programovacího jazyka s želví grafikou\)
  * Týden semestru: cvičení na rekurzi
  * Část cvičení: na úvod jako rozcvičku

## Vazby na jiné aktivity

* Nemá žádné přímé vazby na jiné aktivity.

## Domácí příprava cvičícího

* [ ] Vytisknout několik kopií kódu s velkým fontem.
* [ ] Vytisknout velké obrázky možností na výběr.
* [ ] _Volitelně_ vytisknout a nastříhat kód v menším formátu.
* [ ] Nachystat potřebné předměty.

## Domácí příprava studenta

Účast na přednášce k rekurzi a klasická příprava na cvičení. Není potřeba jiná nadstandardní příprava. Pouze v případě, že studenti ještě nebrali želví grafiku, pak je potřeba nastudovat příkazy pro ovládání želvy.

## Průběh aktivity

### Postup práce

#### Zadání

1. Vysvětlit aktivitu.
   * Je dána rekurzivní funkce, která pomocí želví grafiky vykreslí obrazec, a první volání této funkce.
   * Úkolem je určit, který ze 4 obrázků je ten, který daná funkce vykreslí.
2. Vyvěsit na tabuli kód funkce.
3. _Volitelně_ rozdat malé kopie kódu studentům.
4. Vyvěsit 4 obrázky, ze kterých mají studenti vybrat.

#### První tip

1. Nechat studenty samostatně rozmýšlet.
2. Vysbírat počty hlasů pro jednotlivé varianty.

#### Zanoření \(opakovat podle hloubky rekurze, např. 3 krát\)

1. Pomocí fixy na vytištěném kódu postupně označovat prováděné řádky, podobně jako by to dělal debugger a zároveň na tabuli kreslit pohyby želvy a její pozici.
2. Když dojde na rekurzivní volání, vyvěsit na tabuli další kopii funkce a lehce překrýt tu původní \(imitace zásobníku\).
3. Dát možnost přehodnotit svoji původní volbu a vysbírat nové tipy na výsledek.

#### Vynoření

1. Před prvním vynořením kromě vysbírání nových tipů udělat menší skupinky se studenty s různým názorem na výsledek.
2. Nechat ve skupinkách diskutovat, proč by měl být výsledek právě obrázek, který si myslí. Je možné nechat jednoho mluvčího za skupinku sdělit ostatním názor a argumenty pro něj, které vymysleli ve skupině.
3. Při vynoření odebrat z tabule dokončené volání funkce. 

#### Rozuzlení

* Dokončit simulaci a vykreslit celý obrázek, ideálně s pomocí studentů, kteří budou říkat, co by měla želva dělat.

### Časté chyby studentů a nápovědy

* Součástí tohoto cvičení je dělat chyby a postupně se dopracovat ke správnému výsledku.
* Typicky studenti mají problém s části kódu **za** rekurzivním voláním. To by mělo být reflektováno při výběru distraktorů ke správnému řešení. 
* Nápovědou je postupné krokování kódu a argumenty ostatních spolužáků.

### Otázky do diskuse

Se studenty je možné diskutovat, jak se jim cvičení líbilo a jeho náročnost a také různé modifikace funkce a jejich dopad na vykreslený obrazec.

#### Reflexe

* V jakém momentě bylo jasné, jak bude vypadat výsledný obrazec?
* Který řádek kódu udělal něco jiného, než jste si mysleli?
* Který řádek kódu udělal přesně to, co jste očekávali?

#### Další mentální cvičení {#dalsi_otazky}

* Jak by bylo potřeba upravit funkci, aby vykreslila jiný z nabízených obrázků.
* Jak by vypadal obrázek, kdyby z funkce zmizel řádek XY.

## Vzorové řešení

* [správný](strom_spravny.pdf) obrázek pro volání _draw\(3\)_ 
* [celý kód](strom_spravny.py)
* [kód generující distraktora 1](strom_distraktor_1.py)
* [kód generující distraktora 2](strom_distraktor_2.py)
* [kód generující distraktora 3](strom_distraktor_3.py)
* [kód generující distraktora 4](strom_distraktor_4.py)

## Možná rozšíření

* Probrat otázky v části [Další mentální cvičení](#dalsi_otazky)
* Je možné si hrát s předávanými argumenty, např. měnit délku vykreslovaných čar/úhly otočení v závislosti na hloubce zanoření 
* Hloubku zanoření jde různé přizpůsobovat, ale pokud bude příliš velká, tak bude aktivita nudit. Naopak příliš malé zanoření nebude dostatečnou výzvou.
* Je také možné volat dvě různé funkce navzájem \(nepřímá rekurze\).
* Místo želví grafiky je možné použít např. výpis prvků posloupnosti nebo jiný rekurzivní výpočet, ale to už vyžaduje větší míru abstrakce a nemusí být tak názorné.

## Autor

* Jaroslav Čechák
