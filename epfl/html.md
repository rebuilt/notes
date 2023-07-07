## Typography

```css
p {
  text-transform: capitalize | none | uppercase | lowercase | initial | inherit;
  text-justify: auto | inner-word | inter-character | none | initial | inherit;
  text-align: left | right | center | justify | initial | inherit;
  text-align-last: auto | left | right | center | justify | start | end | initial | inherit;
  text-decoration: text-decoration-line | text-decoration-color | text-decoration-style | initial | inherit;
  text-decoration-color: *color* | initial | inherit;
  text-decoration-line: none | underline | overline | line-through | initial | inherit;
  text-decoration-style: solid | double | dotted | dashed | wavy | initial | inherit;
  text-indent: *length* | initial | inherit;
  text-overflow: clip | ellipsis | string | initial | inherit;
  text-shadow: h-shadow | v-shadow | blur-radius | *color* | none | initial | inherit;
  align-content: stretch | center | flex-start | flex-end | space-between | space-around | initial | inherit;
  align-items: stretch | center | flex-start | flex-end | baseline | initial | inherit; 
}
```

## Fonts
### File path
index.html
assets/
css/
stylesheet.css
fonts/
customfont.woff2
### Linking

```css
@font-face {
  font-family: "My Custom Font";  /* We can name it anything we want */
src: url("/assets/fonts/customfont.woff2") format("woff2");
}

html {
  font-family: "My Custom Font";
}
```

or for better browser compatibility: 

```css
@font-face {
  font-family: "My Custom Font";
src: url("/assets/fonts/customfont.eot");
src: url("assets/fonts/customfont.eot?iefix") format("embedded-opentype"), /* IE6-IE8 */
       url("/assets/fonts/customfont.woff2") format("woff2"), /* Modern Browsers */
       url("/assets/fonts/customfont.woff") format("woff"), /* Pretty Modern Browsers */
       url("/assets/fonts/customfont.ttf") format("truetype"), /* Safari, Android, iOS */
       url("/assets/fonts/customfont.svg#svgFontName") format("svg"); /* Legacy iOS */
}
```

## Including fonts from a web service

From css:

```css
@import url("https://fonts.googleapis.com/css?family=Open+Sans");

html {
font-family: "Open Sans", sans-serif;
}

```

From the html file:

```html
<link href="https://fonts.googleapis.com/css?family=Open+sans" rel="stylesheet">

html {
font-family: "Open Sans", sans-serif;
}

```

## Vertical Rhythm

1. Line height

2. Margin

3. Padding
