# Recap

What is the difference between FlexBox and Grid Layout?
-> Flexbox is only one dimension and Grid Layout has 2

Zje way to make style changes fade smoothly from one to another is known as...
-> Transition

How is it know the way to rotate, relocate, resize, and skew HTML elements in both two- and three-dimensional

## CSS3 animations

# Forms

## Why forms

- For example search bars
- Login/register
- Shipping address
- INPUTS

## Form controls

- 4 Types:
  - Adding Text (single-line, password, text area/multi-line)
  - Making Choices: Radio buttons, Checkboxes, Drop-down boxes
  - Submit Forms: Submit buttons, Image buttons
  - Upload file form

## How forms work

1. User fills in form and presses button to submit info to server
2. Idk
3. Server processes information using programming language
4. Server creates new page (or confirmation response) to send back to the browser based on info received

### Name and Value Pairs

- Name: `username` = value: `Ivy` -> `username = Ivy`

### Form Structure

```html
<form action="http://example.com/join.php" method="get">
  THis is where the form controls will appear.
</form>
```

- YOU HAVE TO HAVE SOMETHING IN THE ACTION

#### Text input

\

```html

```

use `<label>` and not `<p>` !!!

#### Text area

\

```

```

#### Radio Buttons

- needs to have the same name

#### Checkbox

- needs to have the same name
- Returns a list of items
- `checked="checked"` makes it the default

#### Drop down list box

`<select>`

```html
<select name="devices">
  <option value="ipod" selected="selected">ipod</option>
</select>
```

- `selected="selected"` makes it the default

- Can also act as checkboxes `<select multiple="mutiple"...>`

#### File Input Box

- Method must be `post`

#### Submit Button

- `<input type="submit" value="Subscribe"/>`
- Could also be image: `type="image" src="image.jpg" with=... height...`

#### Hidden Form control

- For example csrf tokens
- mostly interesting for JS

#### Labels

- `<label>Age: <input type="text" name="Age"/></label>`
- instead of `<p>`
- Or `<input id="female" .../><label for="female"...>Female</label>`
- the `for` is referencing the `id` `female`

#### Grouping Forms

- `<fieldset>`

#### HTML5: Form Validation

- `required="required"` make the field requiered to be filled before submitting

#### HTML5: Date Input

- `<input type="date" .../>`
- `type="email"`
- `type="url"`
- `type="search"` (the same as input)
-
