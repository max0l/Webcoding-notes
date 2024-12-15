# Recap

What is the difference between FlexBox and Grid Layout?
-> Flexbox is only one dimension and Grid Layout has 2

Zje way to make style changes fade smoothly from one to another is known as...
-> Transition

How is it know the way to rotate, relocate, resize, and skew HTML elements in both two- and three-dimensional

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
2. Name of each form control sent with value user entered
3. Server processes information using programming language
4. Server creates new page (or confirmation response) to send back to the browser based on info received

### Name and Value Pairs

- Name: `username`, value: `Ivy` -> `username = Ivy`

### Form Structure

```html
<form action="http://example.com/join.php" method="get">
  This is where the form controls will appear.
</form>
```

- YOU HAVE TO HAVE SOMETHING IN THE ACTION
- Method is either `get` or `post`
- 

#### Text input

\

```html

<form action="http://example.com">
  <label for="username">Your Username: </label>
  <input type="text" name="username" size="15" maxlength="30" />
  <!-- or type="password" -->
</form>
```

use `<label>` and not `<p>` !!!

#### Text area

\

```html
<p>What do you think of this gig?</p>
<textarea name="comments" cols="20" rows="4">
  <!-- cols and rows represent letters -->
  Enter your comments
</textarea>
```

#### Radio Buttons

- needs to have the same name

```html
<p>Your favorite genre:
  <input type="radio" name="genre" value="rock" checked="checked"/> Rock
  <input type="radio" name="genre"value="pop"/> Pop
</p> 
```

#### Checkbox

- needs to have the same name
- Returns a list of items
- `checked="checked"` makes it the default
- Same syntax as Radio Buttons, but: `type="checkbox"`

#### Drop down list box

`<select>`

```html
<select name="devices" multiple="multiple">
  <option value="ipod" selected="selected">ipod</option>
  <option ...>iPhone</iption>
</select>
```

- `selected="selected"` makes it the default
- Can also act as checkboxes `<select multiple="mutiple"...>` but is not required
  - Can set the max. amount of selectable options: `size="4"` \rightarrow you are allowed to select up to 4

#### File Input Box

- Method must be `post`

```html
<form action="localhost" method="post">
  <input type="file" name="user-song" />
  <input type="submit" value="Subscribe" />
</form>
```

#### Submit Button

- `<input type="submit" value="Subscribe"/>`
- Could also be image: `type="image" src="image.jpg" with=... height...` but don't use this!

#### Hidden Form control

- For example csrf tokens
- mostly interesting for JS
- `<input type="hidden" name="bookmark" value="lyrics" />`

#### Labels

- `<label>Age: <input type="text" name="Age"/></label>`
- instead of `<p>`
- Or `<input id="female" .../><label for="female"...>Female</label>`
- the `for` is referencing the `id` `female`

```html
<form action="localhost">
  <label>Age: <input type="text" name="Age" /></label>
  <!-- or -->
  <input id="female" type="radio" name="gender" value="f" />
  <label for="female">Female</label>
</form>
```
#### Grouping Forms

- `<fieldset>`

```html
<fieldset>
  <legend>Contact details</legend>
  <label>Email: <input type="text" name="email"></label>
  ...
</fieldset>
```

#### HTML5: Form Validation

- `required="required"` make the field required to be filled before submitting (inside `<input required="required" .../>`)

#### HTML5: Date Input

- `<input type="date" .../>`
- `type="email"`
- `type="url"`
- `type="search"` (the same as input but maybe different style)
  - `placeholder="Enter keyword"` creates a placeholder

# Web Accessibility

> Universal design is design that's usable by all people, to the greatest extent possible, without the need for adaptation or specialized design"

Usable by all people: 
- Challenge: define all people (how to make sure it’s functional for people with any type of impairment?)
- **UD** (universl design) is for everyone!

To the greatest extend possible:
- Must work for as many people as possible regardless of struggles with: (1) upper body movement, strength, and/or sensation, (2) lower body movement strength, and/or sensation, (3) balance, (4) vision, (5) hearing, (6) cognition and memory, (7) activity tolerances, (8) speech and/or communication, (9) chemical sensitivities, (10) sensory tolerance, (11) needs for caregiver assistance, and (12) extremes in height and weight.

Without need for adaptation or specialisation
- Individuals do not have to change the way their typically interacts with something
- Some people may still have significant functional needs that require specialized design. In those cases, UD is the foundation but further development is needed

## Universal design

Originally created for architecture and industrial design but expanded to include digital products and services

Based on seven universal design principles:
1. equitable use;
2. flexibility in use;
3. simple and intuitive use;
4. perceptible information;
5. tolerance for error;
6. low physical effort;
7. size and space for approach and use.

- There is no typical, average, normal user
- User contect will vary widely based on circumstances

## Inclusive design

Design methodology that enables and draws on the full range of human diversity
- Inclusive design means making your product available to as many users as possible (like UD, right?)
- Focuses on the process of diversity. This is:
  - Is about engaging authentically with the diverse people and, therefore,
  - it may involve different solutions for different groups of people (edge-cases) - One size fits one

## Accessibility

- Goal: ensure there are no barriers (technical, physical or cognitive) to serving products or services to someone
- It also includes testing usability (usually involving users - user testing)
- It could be seen as one piece of inclusive design 

**Web accessibility**
- The inclusive practice of removing barriers that prevent interaction with, or access to, websites by people with disabilities
- The degree to which a web system is usable by as many people as possible
- A quality, - how easily and effectively a system or service can be accessed and used