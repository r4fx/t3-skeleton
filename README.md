# TYPO3 Skeleton

TYPO3 skeleton to startowy pakiet plików konfiguracyjnych i szablonów dla projektów budowanych na TYPO3 opartych o FLUID i Backend Layout.

W skład skeletona wchodzą:

- struktura katalogów i pliki (HTML i TypoScript) na potrzeby FLUID TEMPLATES
- struktura katalogów na potrzeby Front-endu (STYLE, JS, HTML)
- startowa konfiguracja szablonów FLUID TEMPLATES
- 3 podstawowe szablony Backend Layout (strona szeroka, strona z boczną kolumną, czysta strona)
- kilka podstawowych szablonów dla wtyczki Grid elements
- podstawowe ustawienia środowiska w plikach TypoScript
- prekonfigurowane ustawienia TypoScript dla stron i elementów treści
- prekonfigurowane ustawienia TypoScript dla użytkowników BE
- prekonfigurowane ustawienia TypoScript dla TinyMCE RTE (nie używamy htmlArea RTE)
- katalog `(assets/l10n)` ze startowymi plikami językowymi `.xlf` do wykorzystania w szablonach FLUID i w TS.
- i więcej

> Zawartość TYPO3 Skeleton jest kompatybilna z wersją TYPO3 7.6.4 i nowszych

Instalacja
=====

### Wstęp. Dlaczego `files` zamiast `fileadmin`.

Postanowiliśmy zmienić konwencję standardowo przyjętą w TYPO3 i zmieniliśmy nazwę katalogu roboczego.
Nazwa `fileadmin` mogła kojarzyć się z katalogiem administracyjnym, dostępnym tylko dla autoryzownych
użytkownków. Adres url do ogólnie dostępnych plików na stronie www z nazwą `fileadmin` może nie kojarzyć się dobrze.

Według nas nowo przyjęta nazwa dla katalogu roboczego `files` jest bardziej przyjazna dla użytkowników i wyszukiwarek.
Dzięki tej zmianie wszystkie linki do plików załączanych przez redaktorów TYPO3 będą miały
bardziej przyjazną formę.

Ustawienie to jest absolutnie dopuszczalne w TYPO3, każdy może dowolnie przekonfigurować ścieżkę do katalogu roboczego TYPO3 w swojej instalacji systemu poprzez moduł Install Tool.



Ustawienia systemowe
-----

> Ustawienia dostępne z poziomu modułu `Install`  
> Skeleton dostarcza poniższe ustawiennia domyślnie z pliku `typo3conf/AdditionalConfiguration.php`

**zmiana roboczego katalogu systemowego**

```javascript
[BE][fileadminDir] = files/
```

**zmiana domyśnego katalogu systemowego do obrazków dodawanych przez edytor RTE**

```javascript
[BE][RTE_imageStorageDir] = files/uploads/
```

**Dodanie katalogu `files` do obsługi przez `config.absRefPrefix`**

```javascript
[FE][additionalAbsRefPrefixDirectories] = files/
```


Ustawienia magazynów plików
-----

> Poniższe ustawienia wykonaj w korzeniu strony (id=0).
> Niewymienone pola pozostaw domyślnie.

### File Storage

**Edytuj rekord `File Storage` według poniższego:**

> Zapamiętaj, że ID tego rekordu powiązane jest z konfiguracją domyślnego katalogu dla wgrywanych plików, patrz `defaultUploadFolder` w konfiguracji `/tsconfig_user/tsconfig.tsu`.

* `Name: Files`
* `Base path: files/`
* `Is default storage?: [x]`

![File Storage](/assets/images/file_storage.png)

### Filemount

> Filemount używane jest w konfiguracji uprawnień dostępów użytkownikom BE do plików i katalogów.

**Edytuj rekord `Filemount` według poniższego:**

* `Label: Files`
* `Storage: Files`
* `Folder: /`

![File Storage](/assets/images/file_mount.png)


### Automatyczne generowanie brakujących plików i katalogów

Na koniec wejdź do modułu `Install` w zakładkę `Folder structure` i naciśnij button `Try to fix file and folder permissions`,
żółte ostrzeżenia (jeśli były) powinny zostać skorygowane.


Załączenie plików TypoScript
-----

> Pliki TS dołączane będą rekursywnie wg ustalonej konwencji rozszerzeń dla plików

> - **.tss** - TypoScript Setup
> - **.tsc** - TypoScript Constants
> - **.tsp** - Page TSConfig
> - **.tsu** - User TSConfig

#### Poniższe linie kodu umieść w ustawieniach strony głównej serwisu przez moduł Template

**Page Setup**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:assets/plugins/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/page/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/+ext/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/context/" extensions="tss">
```

**Page Constants**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:assets/plugins/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/page/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/+ext/" extensions="tsc">
```

**Page TSConfig**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:assets/plugins/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/backend_layouts/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/tsconfig_page/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/context/" extensions="tsp">
```

#### Ustawienia użytkownika, dodaj w edycji użytkownika/grupy w module Backend users

**User/User group TSConfig**

> **WAŻNE:**
>
> plik `assets/typoscript/tsconfig_user/tsconfig.tsu` jest dołączany automatycznie dla wszystkich użytkowników BE
> w pliku `typo3conf/AdditionalConfiguration.php`

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:assets/typoscript/tsconfig_user/" extensions="tsu">
```


Backend Layout
-----
`todo`


Wtyczki usprawniające pracę i dajace dodatkowe możliwości
-----

Poniższe wtyczki poprostu musisz znać:

* [Grid Elements](https://typo3.org/extensions/repository/view/gridelements)
* [Mask](https://typo3.org/extensions/repository/view/mask)
* [VHS Fluid ViewHelpers](http://typo3.org/extensions/repository/view/vhs)


Developer helpers
-----


**debug**

dodaj w adresie url `&debug=1` lub `?debug=1`, debug wyłącza/włącza na stronie opcje developerskie, ustawione w pliku `config.tss` [[Link]](https://github.com/r4fx/t3-skeleton/blob/master/assets/typoscript/page/config.tss#L78)
