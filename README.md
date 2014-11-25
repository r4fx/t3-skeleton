##TYPO3 skeleton

TYPO3 skeleton to startowy pakiet dla każdego nowego projektu stawianego na TYPO3.

W skład skeletona wchodzi:

- [x] struktura katalogów i pliki (HTML i TypoScript) na potrzeby FLUID TEMPLATES
- [x] struktura katalogów i pliki na potrzeby Front endu (SCSS, JS, HTML)
- [x] startowa konfiguracja szablonów FLUID TEMPLATES
- [x] podstawowy szablon Backend Layout
- [x] podstawowe ustawienia środowiska w plikach TypoScript
- [x] prekonfigurowane ustawienia TypoScript dla stron i elementów treści
- [x] prekonfigurowane ustawienia TypoScript dla użytkowników BE
- [x] prekonfigurowane ustawienia TypoScript dla RTE (rtehtmlarea)
- [ ] ...



## Instalowanie

Pliki TypoScript należy załączyć w BE wg poniższego:


### Ustawienia dla stron

** Page Setup **

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/page/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/+ext/" extensions="tss">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/" extensions="tss">
```

** Page Constants **

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/page/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/+ext/" extensions="tsc">
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/plugins/" extensions="tsc">
```


** Page TSConfig **

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/tsconfig_page/" extensions="tsp">
<INCLUDE_TYPOSCRIPT: source="FILE:files/private/assets/typoscript/plugins/news/" extensions="tsp">
```

### Ustawienia dla użytkowników


** User/User group TSConfig **

```javascript
<INCLUDE_TYPOSCRIPT: source="DIR:files/private/assets/typoscript/tsconfig_user/" extensions="tsu">
```