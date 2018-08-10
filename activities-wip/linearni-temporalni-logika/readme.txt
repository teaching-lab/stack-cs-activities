# Aktivita na lineární temporální logiku (LTL)

Cílem této aktivity je u účastníků vybudovat intiuitivní představu o LTL a jejím použití. Aktivita se skládá z následujících částí (pro každou skupinu):

- 1 obrázek přechodového systému (Kripkeho struktury) znázorňující akvárium se dvěma rybičkami - Alicí a Bobem
- sada obrázků běhů znázorňující sémantiku jednotlivých operátorů
- sada formálních zápisů temporálních operátorů s jejich intuitivním vysvětlením
- sada LTL formulí
- sada neformálně popsaných vlastností

Na začátku aktivity je vhodné ukázat obrázek KS, vysvětlit co znázorňuje a jak funguje. Následně je vhodné motivovat potřebu LTL - umět vyjádřit vlastnosti KS. Pro tyto účely je třeba zadefinovat intuitivně běh a ukázat, že se o bězích můžeme bavit pomocí logiky.

Následně každá skupinka dostane sadu běhů a operátorů a mají je napárovat -- přiřadit sémantiku.

V dalším kroku každá skupinka dostane sadu neformálních vlastností a LTL formulí. Cílem je opět vlastnosti a formule napárovat. Je vhodné ukázat nejasnosti přirozeného jazyka - např. na until a weak until.

Posledním úkolem je rozhodnout, které z předchozích vlastností pro daný systém platí a které neplatí. U neplatících vlastností je vhodné hledat protipříklad (vhodné použít fólie, na které je možné kreslit), důkaz platnosti netřeba vyžadovat -- maximálně nějakým neformálním argumentem.

Na závěr může být vhodné rozvinout další diskusi, otevřít otázku, jak provádět model checking automaticky, ukázat souvislost s automaty, praxí apod.

Plny postup:
- Na začátku jsem stručně představil pojem přechodového systému na tabuli a vysvětlil, co je to běh. Následně jsem ukázal motivaci, proč bychom chtěli mít logiku nad běhy (chceme vybírat běhy s nějakou vlastností a tím charakterizovat systémy). Připomenul jsem výrokovou logiku a velmi intuitivně jsem naznačil, co to znamená, že běh je modelem formule. 
- Poté jsem rozdal do malých skupin (možná i dvojic) papírky se základní operátory LTL (next, future, until, weak until) a papírky , které dávají jejich "intuitivní grafickou definici". Úkolem bylo je napárovat. To proběhlo hladce a nikdo s tím neměl problém. 
- Následně jsem představil přechodový systém akvária s Bobem a Alicí. Rozdal jsem papírky, které vyjadřují složitější vlastnosti pomocí LTL, a papírky se stejnými vlastnostmi,  ale v přirozeném jazyce. Opět jsem je nechal papírky napárovat. Průběžně jsem kontroloval a v případě neshod jsem jim dával protipříklady. Nejrychlejší skupiny jsem ještě nechal rozhodovat, jestli daná vlastnost na našem akváriu platí nebo ne. Požadoval jsem i protipříklady. 
- Na konci jsem aktivitu stručně reflektoval a diskutoval, co jim dělalo problém. Zejména to hluboké zanořování a rozdíl mezi until a weak until (řešili jsme u toho i nejednoznačnost některých formulací v přirozeném jazyce). 

Autor: Honza Mrazek
