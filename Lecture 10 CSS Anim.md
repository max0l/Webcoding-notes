# CSS3 animations

- where previously only possible with Flash or JavaScript
- CSS Transistions
  - a way to make style changes fade smoothly
- CSS Transforms
  - a way to rotate, relocate, resize, and skew HTML elements in both two-and three- dimensional way
- CSS Keyframes

## CSS transitions

Apply a style smoothly or gradually

- Which CSS property to change (transistion-property)
- How long it should take (transition-duration)
- The Manner in which the transition accelerates (transition-timing-function)
- Wheter there should be a pause before it starts (tr)

### transition-property

...

## Transform basics

transition -> need a trigger
trasnform -> does not need a trigger

`trsansform` needs a value (which has a function)

### rotate

- Use the rotate function to make the elment appear tilted
- `transform: rotate(-20deg)`

### transform origin

- `transform-orifin`
- to indicate form which point the element will be rotated
- first value is the horizontal offset und the second is the vertival offset (if only one is provided, it will be used for both)
-

```css
.gallery-img {
  max-width: 100%;
  height: auto;
  object-fit: cover;
  opacity: 0.5;
  /* Define transition*/
  transition: opacity 0.5s ease-in-out, transform 2s ease-in-out;
}

.gallery-grid > a {
  overflow: hidden;
}

/*Trigger transition when hover*/
.gallery-img:hover {
  opacity: 1;
  transform: scale(1.5);
}
```

## Keyframes

- similar to transitions
- more granular control: serveral states
- more comples
- Trigger not needed ()
