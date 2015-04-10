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

zmiana domyśnego katalogu systemowego dla plików statycznych
```javascript
[BE][staticFileEditPath] = files/static/
```


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