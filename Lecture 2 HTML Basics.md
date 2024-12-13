# Repeat

What is a self-contained unit of discourse in writing dealing with a particular point or idea?
What HTML tag is used for this purpose?: Paragraph: `<p>`

HTML Elements between `<html></html>`-> `<hea>` (Metainformation), `<body>` (Contents)

How many section headings are there in html: 6 headings, (s1) 6 -> s1 to s6

What is NOT the `<br>` tag used for: Making a new paragraph!!!!!

What is HTML used for: STRUCTURE THE CONTENTS (Text, Lists, Links, Images, Tables, Forms) -> Giving meaning to the contents

What is CSS used for: Presentation + Layout

Opening: `<p> `closing `</p>`

Attributes:

`<a lang=de>`

Body, Head and Title

# HTML Basics

## Tags Describe Content

`<b></b>` Bold (not the same as `<strong>` because it gives the text a higher meaning)
`<i></i>` Italic
Dont use HTML to alter the presentation, use CSS for that. So dont use `<b>` or `<i>`.

Creating a page involves adding tags to content. These Tags are known as "markup".

## HTML Elements

### Structural

- e.g Headings `<h1>` to `<h6>`
- Defining the main structure of the page
- (Use css to modify the statics)
- Paragraphs `<p>`: A paragraph consist of one or more sentences that form a self-contained unit of discourse. The Start of a paragraph is indicated by a new line. Text is easier to understand when it's split up into units of texts. For example, a book may have chapters. Chapters can have subheadings. Under each heading will be one or more paragraphs.

### Semantic

#### What is it?

- Set of elemts, for example:
  - `<em>` tag adds emphasis
  - `<blockquote>` contains a quote

#### Why use it

- Provides extra information about your content
- Do NOT use it to alter presentation if those elements

#### Application

- Screen readers can add emphasis to words in `<em>`
- Search engines can find quotations in `<blockquote>`

#### Tags:

##### Strong and Emphasis

- `<strong>Beware</strong>` or `<em>think</em>`

##### Blockquote

```html
<blockquote cite="https://example.com>
<p></p>
</blockquote>
```

The url: A URL that designates a source document or message for the information quoted. This attribute is intended to point to information explaining the context or the reference for the quote.

##### Inline quote:

```html
<p>He said <q>lol</q>.</p>
```

Quoting a specific Paragraph. Quotation marks will be automatically set: He said "lol".

##### Abbreviations & Acronyms

```html
<p><abbr title="Professor">Prof</abbr> Müller...</p>
```

There is no `<acronym>` use `<abbr>` instead

##### Definitions and Citations

```html
<p><cite>The Book</cite> by Someone</p>
```

(After agreement): Must contain title of Work, Not Author. The persons name is not the title. So the Author should not be in `<cite>`

```html
<p> A <dfn>black hole</dnf> is a region of space from which nothinh, note even light, can escape.</p>
```

The **nearest parent** of the `<dfn>` tag must also contain the definition/explanation for the term inside `<dfn>`.
Inside a Paragraph we have a Definition and some Text. (Visualize the Hierarchy). That Means that the whole paragraph is the definition of what's inside the `<dfn></dfn>` Tag. The nears parent would be `<p>`.

##### Author Details

```html
<address>
  <p><a ="href" ="x@example.com">x@exampel.com</a></p>
  <p>Some Street 57, Somewhere</p>
</address>
```

The Contact Address element, provides contact information for a person or organisation. Can have `<p>`, but not necessary. Can also have `<br>` to make new lines (for addresses/streets)

##### Changes to Content

```html
<p> It was the <del>worst</del><ins>Best</ins></p>
```

To show a change. Will be crossed out
THE PAIR `del` and `ins` must be used always together. `<del>` is used to signalize something has been deleted and `ins` Indicates text that has been (newly) **added** to a document.
To cross something out use: `<s>crossedout</s>` (Marks text that is **no longer accurate, relevant, or valid** but is retained for historical or contextual reasons.) There is also `<u>` to underline something but dont use it!
`<del>Test</del><ins>Best</ins>` = <del>Test</del><ins>Best</ins>

##### Bold and Italic

`<b></b>`
Old HTML Elements. Not good Practice
Draw the attention to the elements contents wich are not otherwise granted special importance. Don't use it to alter the "looks" of a text. If that is what's wanted, use CSS.

`<i></i>`
Has some more meaning, e.g. Idiomatic Text: Technical terms, taxonomical designations, Translations, Thoughts (terms on other languages?)

##### Superscript & Subscript

Higer and lower
`<sub></sub>, <sup></sup>`
<sub>SUB</sub>normal<sup>SUP</sup>

##### Whitespace is collapsed

`This          eb` will become this `This eb`

##### Line Breaks

`<br>`
Forces the browser to add a line break
(if you use this to modify the presentation Layer, you are using it wrong, dont use it to create different paragraphs)
Useful for addresses

##### Horizontal Rules

`<p>Topic 1</p>`
`<hr>` -> Semantik Break, other topic. Has a Semantik Meaning
`<p>Topic 2</p>`

#### Lists

##### Three types

1. Ordered
   - Numbers (added automatically), The orders matters (like a recipe)
   - The order of the items **is** important

    ```html
    <ol>
      <li>First</li>
      <li>Second</li>
    </ol>
    ```

2. Unordered `ul`
   - Like Ingredients list. Order does not matter
   - Used to create navigation menus

    ```html
    <ul>
      <li>Milk</li>
      <li>Eggs</li>
    </ul>
    ```

3. Defintion
   - Like a list of Definitions
   - Creates a list that is used to define terms

    ```html
    <dl>
      <dt>Sashimi</dt>
      <dd>Sliced raw fish</dd>
      <dd>Similar to sushi</dd>
    </dl>
    ```

   - The Term `Sashimi` has 2 definitions (like a dictonary)
   - Dont use this as a Heading

##### Nested lists

It is possible to have lists inside lists

```html
<ul>
  <li>Mousses</li>
  <li>
    Pastries
    <ul>
      <li>Croissant</li>
      <li>Palmier</li>
    </ul>
  </li>
  <li>Tarts</li>
</ul>
```

### What are Flow Contents?

-> Can be used inside other Contents?
