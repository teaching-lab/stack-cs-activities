# Encryption modes

## Vseobecne poznamky

* Timova aktivita
* Predosle znalosti kryptografie nie su nutne
* Praca v skupinkach o velkosti 3-4
* Pocas prace obchadzat, dovysvetlovavat, co je treba a kontrolovat odpovede
* Skupiny nechat rozkladat papieriky niekde, kde je dost miesta (idealne stol, moze byt zem, stolicka nestaci!)
* Tlac: Encryption/decryption schemy na biely papier, use cases na modry, features na zlty (bonusove na iny zlty?)

## Priebeh

* Motivacne intro slidy
  * zdoraznit, ze predpokladame fixny kluc
  * Podla ucastnikov vysvetlovat dodatocne veci spolocne
  * XOR, nonce, counter, initialization vector
* Rozdat sifrovacie schemy
  * Task: Prejst ich, identifikovt rozdiely, zistit, ci rozumeju vsetkej notacii
* Rozdat desifrovacie schemy
  * Task: Priradit desifrovacie k sifrovacim
* Rozdat "features"
  * Task: Priradit k modom (kazdy feature maju prave tolko krat, kolko ju potrebuju)
  * Bonusove: Rozdat komplikovanejsie "features"  a vysvetlit predictably/unpredictably a synchronizaciu
  * Bonusove davat skupinam, ktore su rychlejsie
* Rozdat "use cases"
  * Vybrat najvhodnejsi mod (+zdovodnit vyber)
  * voting: diskusia ecb vs. cbc (ecb staci, cbc je menej nachylne na chyby pri buducom rozsirovani)
  * video: crt/ofb (ale crt je standard)
  * embeded, IM, settings encryptoin: asi cbc (standard)
  * backups: nic nie je velmi dobre, idealne xts
* Spolocna diskusia
  * kto kam pridelil aky use case
  * Ako je to v realite

## Pocas workshopu

* Doplnit casove odhady
* Doplnit pripadne metodicke poznamky

## Poznamky z uvedenia Poznej FI 2017

* Uvedenie na 1.5 h pre stredoskolakov, casovo akurat.
* Na konci spajat skupiny a nechat argumentovat navzajom, preco zvolili ktory rezim kam.
* Idealne teda polovicny pocet organizatorov, ako je skupin, aby po spojeni do dvojic skupin mohol byt s kazdou vacsou skupinou jeden org.
* Spomenut AES comic
* Feature "precomputation" zlozitejsia na pochopenie (ale s dovysvetlenim ok)
* (un)predictability je v pohode, ak uz v predoslej casti ich vedieme k zamysleniu, ktore bloky sa rozbiju
* Stredoskolaci nepoznaju XOR
* Diskusiu zacat use casom video
* Feature 8 -- kolko sa rozbije blokov kvoli synchro?
* Ako naformulovat pri uvodnych slidoch otazku na ECB (aby vymysleli ECB)

## Dalsie materialy

* ECB tux
  * https://blog.filippo.io/the-ecb-penguin/
* Corkami encryption modes and file formats
  * https://code.google.com/archive/p/corkami/
  * https://github.com/corkami
* A Stick Figure Guide to the Advanced Encryption Standard (AES)
  * http://www.moserware.com/2009/09/stick-figure-guide-to-advanced.html
