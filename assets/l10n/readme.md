## How to use localisation labels in Fluid templates or in TypoScript

**Tag notation:**

`<f:translate key="LLL:assets/l10n/locallang.xlf:cookieBox.paragraph_1"/>`

**Inline notation:**

`{f:translate(key:'LLL:assets/l10n/locallang.xlf:cookieBox.paragraph_2.url')}`

**In TypoScript:**

```jvascript
page.1000 = TEXT
page.1000 {
    data = LLL:assets/l10n/locallang.xlf:cookieBox.paragraph_1
    wrap = <h2>|</h2>
}
```
