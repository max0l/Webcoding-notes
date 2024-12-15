# CSS3 animations

- where previously only possible with Flash or JavaScript
- **CSS Transitions**
  - a way to make style changes fade smoothly from one to another
  - needs a trigger
- **CSS Transforms**
  - a way to rotate, relocate, resize, and skew HTML elements in both two-and three-dimensional way
  - needs a trigger
- **CSS Keyframe Animation**
  - Similar to transitions but mire complex and powerful
  - does not need a tricker

## CSS transitions

Apply a style smoothly or gradually
- Which CSS property to change (**transistion-property**)
- How long it should take (**transition-duration**)
- The manner in which the transition accelerates (**transition-timing-function**)
- Whether there should be a pause before it starts (**transition-delay**)
- You also need something to trigger the transition. A state change such as `:hover`, `:focus` or `:active` makes a good trigger

### transition-property

Transition-property identifies the CSS property that we want to transition smoothly

### transition-duration

Sets the amount of time it will take for the animation to complete in seconds (s) or milliseconds (ms). In our next example, it's 2 seconds.

### Example

```css
#box1{
...
  background-color: red;
  transition-property: background-color, color; /* or "all" */
  transition-duration: 2s;
  transition-timing-function: linear;
  transition-delay: 2s;
}
/* This will switch the colors after two seconds with a 2 seconds duration*/
#box1:hover {
  background-color: blue;
  color: red;
}
```

### transition-timing-function

- Default: `ease` Starts slowly, accelerates quickly, then slows down at the end
- The transition-property and the transition-duration from the foundation of a transition, but you can refine it further. The transition-timing-function is used to set the way in which a transition can roll out over time
- Other values: `ease / linear / ease-in / ease-out / step-start / step-end / steps`

### transition-delay

- the transition-delay property delays the start of the animation by a specified amount of time
- If you just want to add a little bit of smoothness to all your state changes, regardless of which property might change, use the **all*** value for `transition-property: all;`

### multiple transitions

- We can change several properties at once
- By listing all of the values for each property separated by commas

## CSS Transform

- A way to rotate, relocate, resize, and skew HTML elements in both two-and three-dimensional space
- You can apply a transform to the normal state of an element, and it will appear in its transformed state when the page loads
- It is common to pull out the transforms only when user interact with the element
- Transforms are supported on all major browser versions with vendor prefixes
- Does need a trigger

`trsansform` needs a value (which is a function), for example `rotate(degree)` or `translateX(offset)`

### rotate

- Use the rotate function to make the element appear tilted
- `transform: rotate(-20deg)`

```css
#box6:hover {
  transform: rotate(-20deg);
  transform-origin: center top; /* 50% 0 / 75px 0 */
}
```

### translate

Use the `translateX(offset)`, `translateY(offset)` or `translate(offsetX, offsetY)` to move the rendered element to a new location. Positive or negative values are accepted

```css
#box9:hover {
  transform: translateX(20px);
}
```

### scale

Transforms the size. Use the `scaleX(horizontal)`, `scaleY(vertical)` or `scale(horizontal, vertical)` to make an element appear larger or smaller

```css
#box12:hover {
  transform: scaleX(1.5);
}
```


### skew (warp/strach)

Use the `skewX(horizontal)`, `skewY(vertical)` or `skew(horizontal, vertical)` to change the angle of either the horizontal or vertical axis (or both axes) by a specified number of degrees

```css
#box15:hover {
  transform: skewX(15deg);
}
```
### transform origin

- to indicate from which point the element will be rotated
- first value is the horizontal offset and the second is the vertical offset (if only one is provided, it will be used for both)

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

## Keyframe animation

- similar to transitions
- more granular control: several states
- more complex
- **Trigger not needed**
- Keyframe animation is known as explicit animation because you program it's behaviour

### Basics

Two parts:

1. Establish the keyframe with a `@keyframe` rule and name

    ```css
    @keyframes animate-background {
      0% { background-color: red; }
      25% { background-color: orange; }
      50% { background-color: yellow; }
      75% { background-color: green; }
      100% { background-color: purple; }
    }
    ```

1. Add animation properties to the elemets that will be animated

```css
#box18 {
  animation-name: animate-background;
}
```

### Properties

- Which animation to use (`animation-name`)
- How long it should take (`animation-duration`)
- The manner in which it should accelerate (`animation-timing-function`)
- Whether to pause before it starts (`animation-delay`)
- How many times it should repeat (`animation-iteration-count`)
- Whether it plays forward, in reverse, or alternates back and forth (`animation-direction`)
- Whether it should be running or paused. The play-state can be toggles on and off with JavaScript or on hover (`animation-play-state`)
- Whether to override defaults that prevent properties from applying out-side runtime (`animation-fill-mode`)

```css
#box18 {
  animation-name: super-animation;
  animation-duration: 5s;
  animation-iteration-count: infinite; /*required*/
  animation-direction: alternate;
}
```