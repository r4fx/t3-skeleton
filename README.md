TYPO3 skeleton
=====

TYPO3 skeleton to startowy pakiet dla projektów budowanych na TYPO3.

W skład skeletona wchodzą:

- [x] struktura katalogów i pliki (HTML i TypoScript) na potrzeby FLUID TEMPLATES
- [x] struktura katalogów i pliki na potrzeby Front endu (SCSS, JS, HTML)
- [x] startowa konfiguracja szablonów FLUID TEMPLATES
- [x] podstawowy szablon Backend Layout
- [x] podstawowe ustawienia środowiska w plikach TypoScript
- [x] prekonfigurowane ustawienia TypoScript dla stron i elementów treści
- [x] prekonfigurowane ustawienia TypoScript dla użytkowników BE
- [x] prekonfigurowane ustawienia TypoScript dla RTE (rtehtmlarea)
- [ ] ...

**Zawartość TYPO3 Skeleton jest kompatybilna z wersją TYPO3 6.2.X wzwyż**

Instalowanie
=====

Postanowiliśmy zmienić konwencję przyjętą przez autorów TYPO3 i zmieniliśmy nazwe katalogu roboczego.
Nazwa `fileadmin` mogła koajarzyć się z katalogiem administracyjnym, dostępnym tylko dla autoryzownych
użytkownków. Adres url do ogólnie dostępnych plików na stronie www z nazwą `fileadmin` nie kojarzył się dobrze.

Według nas nowo przyjęta nazwa `files` jest bardziej przyjazna dla użytkowników i wyszukiwarek.
Dzięki tej zmianie wszystkie linki do plików załączanych przez redaktorów TYPO3 będą miały
bardziej przyjazną formę.



Nowe ustawienia systemowe
-----

**Do ustawienia z poziomu modułu INSTALL TOOL**

zmiana roboczego katalogu systemowego
```javascript
[BE][fileadminDir] = files/
```

zmiana domyśnego katalogu systemowego do obrazków dodawanych przez edytor RTE
```javascript
[BE][RTE_imageStorageDir] = files/public/uploads/
```

zmiana domyśnego katalogu systemowego dla plików statycznych (tylko poniżej wersji 7.x)
```javascript
[BE][staticFileEditPath] = files/static/
```


Ustawienia magazynów plików
-----
todo: dodać zrzuty ekranu (Filelist, root)

**File Storage**

Wykonaj poniższe kroki w korzeniu strony (id=0)

1. Utwórz rekord `Filemount` z ustawieniami:

Name: `Files root`
Base path: `files/`

Is writable?: `[]`


1. Zmień nazwę domyślnie utworzonego magazynu plików (File Storage) z `fileadmin` na `files`.
2. Dodaj drugi rekord dedykowany dla plików publicznych o nazwie `Public`, ze ścieżką relatywną `files/public/`.
3. Jeśli żaden rekord `File Storage` nie występuje utwórz:
    a) pierwszy rekord o nazwie `Files root` ze ścieżką relatywną `files/`, w dostępności zaznacz wszystkie opcje.
    b) drugi rekord o nazwie `Public`, ze ścieżką relatywną `files/public/`, w dostępności zaznacz wszystkie opcje,
    ustaw też dla tego rekordu opcję `Is default storage`.
    (id tego rekordu powiązane z konfiguracją htmlArea RTE, patrz `defaultUploadFolder`, domyślne id w konfiguracji to `2`).


**Filemount**

Wykonaj poniższe kroki w korzeniu strony (id=0)

1. Utwórz rekord `Filemount` z ustawieniami:

Label: `Files root`
Storage: `Files root`
Folder: `/`
Read-only: `[x]`

2. Utwórz drugi rekord `Filemount` z ustawieniami:

Label: `Public`
Storage: `Public`
Folder: `/`


**Automatyczne generowanie brakujących plików i katalogów**

Na koniec wejdź do modułu `Install` w zakładkę `Folder structure` i naciśnij button `Try to fix file and folder permissions`,
teraz żółte ostrzeżenia powinny się skorygować.


Załączenie plików TypoScript
-----

> Pliki TS dołączane będą rekursywnie wg ustalonej konwencji rozszerzeń dla plików

> - **.tss** - TypoScript Setup
> - **.tsc** - TypoScript Constants
> - **.tsp** - Page TSConfig
> - **.tsu** - User TSConfig

**Page Setup**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/page/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/content/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/+ext/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/" extensions="tss">
```

**Page Constants**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/page/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/+ext/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/" extensions="tsc">
```

**Page TSConfig**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/tsconfig_page/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/content/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/news/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/rtehtmlarea/" extensions="tsp">
```

**User/User group TSConfig**

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/tsconfig_user/" extensions="tsu">
```


Wtyczki
-----
Przy pracy z szablonami FLUID nieocenionymi wtyczkami mogą okazać się:

* Content Designer - http://typo3.org/extensions/repository/view/content_designer
* VHS: Fluid ViewHelpers - http://typo3.org/extensions/repository/view/vhs

W źródlach Skeletona znajduje się konfiguracja wtyczki Content Design na potrzeby ukrywania nagłówka podstrony.
Po instalacji wtyczki i dołączeniu pliku `/plugins/content_designer/page-fields.tss` w edycji strony zostanie dodana nowa zakładka `Settings`.