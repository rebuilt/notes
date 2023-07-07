## Color functions
  ** Darken
    ```css
      div {
        background: lighten(red, 30);
        color: darken(red, 30);
}

```
  ** Lighten

```css
div {
background: lighten(red, 30);
 }

```

  ** Saturation
  ```css
    div {
    background: saturate($key-color, 15);
    background: desaturate($key-color, 15);
}
```


  ** Hue
  ```css
    div {
    background: adjust-hue($key-color, 10);
    background: adjust-hue($key-color, -10);

}
```

  ** Transparency
  ```css
    div {
    background: rgba(#2c9cf2, 0.6);
}
```

