# Encryption modes

Hands-on team activity for understanding block cipher modes of operation. From motivation, via getting to know the principles, reasoning about features to justifying appropriate use cases. Based on matching given paper tiles and discussing within and between groups.

| Duration:  | 1.5–2 hrs                          | Participants: | 6–30 students |
| ---------: | :--------------------------------- | ------------: | :------------ |
| Class:     | table for each group, projector    | Instructors:  | 1+ (ideally 1 per 6-8 participants) |
| Resources: | printed activity tiles, intro presentation | Needed prior knowledge: | understanding XOR, intuition of using encryption (works well with smart secondary school students) |

## Learning outcomes

* Understand the need for encryption modes (i.e. why ECB is not sufficient).
* Know multiple modes of operation, their principles, benefits and drawbacks.
* Justify selection of appropriate mode for selected use cases.

## Activity overview

* Motivation ([introductory presentation](slides.pdf))
  * Go over the introductory presentation with the group. Let the participants figure out every step themselves (e.g. letting them figure out we'll split the plaintext, use the cipher multiple times, ...).
  * Emphasize we presume the key is fixed for the whole activity.
  * Make sure they understand how bitwise XOR works and what properties it has (e.g. XORing with the same string twice results in the plaintext).
* Division into groups
  * Let people divide into groups of 3-4 people each as they see fit.
* Encryption schemes ([scheme cards with mode names](cards.pdf))
  * Give cards with encryption schemes into each group.
  * Task: Go over the schemes, identify differences, find out if they understand the notation.
  * If necessary, explain the schematics, field coloring, XOR, nonce, counter and string concatenation.
* Decryption schemes ([scheme cards with letters](cards.pdf))
  * Give cards with decryption schemes into each group.
  * Task: Assin the decryption scheme to corresponding encryption schemes.
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

## Setup and preparation

## Vseobecne poznamky

  * From now on, work with the groups individually (if there's enough instructors)
  * work with groups individually

* Timova aktivita
* Predosle znalosti kryptografie nie su nutne
* Praca v skupinkach o velkosti 3-4
* Pocas prace obchadzat, dovysvetlovavat, co je treba a kontrolovat odpovede
* Skupiny nechat rozkladat papieriky niekde, kde je dost miesta (idealne stol, moze byt zem, stolicka nestaci!)
* Tlac: Encryption/decryption schemy na biely papier, use cases na modry, features na zlty (bonusove na iny zlty?)

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

## Related material

* Ange Albertini has a nice [illustration of modes of operation's failures](https://raw.githubusercontent.com/corkami/pics/master/binary/CryptoModes.png) and an intriguing [AES crypto-binary magic trick](https://speakerdeck.com/ange/when-aes-equals-episode-v). More interesting stuff from Ange (reverse engingeernig, binary stuff, crypto, visualizations) can be found at [Corkami GitHub](https://github.com/corkami) or at [Speaker Deck](https://speakerdeck.com/ange).
* For generating your own hi-res ECB penguin (or pop-art thereof), see for example the [blog post tutorial](https://blog.filippo.io/the-ecb-penguin/) by Filippo Valsorda.
* If you are interested in how the block cipher blackbox works, see for example [A Stick Figure Guide to the Advanced Encryption Standard (AES)](http://www.moserware.com/2009/09/stick-figure-guide-to-advanced.html)

## Author

Created by Martin Ukrop in 2016.
