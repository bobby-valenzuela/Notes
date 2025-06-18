- Each Vue instance has several “reserved properties”, that are
  effectively objects:

  - **El property**: defines which HTML element the Vue instance
    controls

  - **Data property**: stores any non-function data

  - **Methods property**: stores any functions and executes them when a
    method is called

  - **Computed property**: stores results from functions which are
    executed once, and stores the values as the values are not expected
    to contain any variable data which could alter the computed result.
    I is recommended to use computed properties wherever possible as the
    result is cached

  - **Watch property**: Code is executed upon any data changes, where
    the key matches the key in the data property that is to be watched.

- The “this” term inside a Vue instance will refer to the Vue instance
  itself

- Vue Js renders the HTML template prior to sending the HTML structure
  to the browser. This implies that there is no run-time occurring in
  Vue js, and hence, no visible Vue js traces in the HTML itself.
  Rather, a template is built from the Vue instance and that template is
  sent to the browser.

- **Methods vs Computed**

  - Methods

    - Real functions

    - (Plausibly) Execute jointly

  - Computed

    - Are technically just data properties that recalculate if data
      changes

    - Cannot take/pass parameter (arguments)

    - Must always return something

**Double curly braces**

- Double curly braces are required when coding directly in to the HTML
  document, this is known as “interpolation”, or “string interpolation”
  if a string I being passed from the Vue instance into the Vue app in
  the HTML document. Inside a set of double curly braces you are still
  indirectly accessing the Vue instance and thus you must exhibit
  standard JS practices such as adding the “()” when calling a method.

- Double curly braces are not required when accessing the Vue instance
  from a Vue directive, for example, in a “v-bind” directive the value
  of the attribute does not need to be in curly braces nor are “()”
  requires when calling a method.

**Directives:**

Directives are instructions we can give from the HTML document to the
Vue instance. Some directives are reserved in Vue js (like “v-for” and
“v-on”) but directives can be created.

**Directives**

- V-bind / : You can pass Vue instance info (data, methods, etc) into
  HTML attributes using this directive.

- V-html: you can grab HTML code saved as a string in the data section
  of the Vue instance and render it as HTML code

- V-on / @ : You can use v-on to respond to DOM events, example
  v-on:click, where the attribute is the function to be run in the Vue
  instance

- V-once: returns initial value of any property stored in data,
  regardless of later data type mutation. However if a none – v-once
  action is called later in the document, it will cancel the v-once call
  of the initial value

- V-for: Creates loops of elements based on some data in the Vue
  instance (usually an array)

  - Important to assign a bind a key to each list item which is not the
    index value. Example: \<p v-for=”(**apple**, index) in apples”
    **:key=”apple”**\> {{ apple.name }} \</p\>

- V-model: enables <u>two-way binding</u> between data in HTML and data
  in the Vue instance

  - Imagine an arrow representing the dynamical path of the reactive
    change in vue data. The arrow usually starts from the Vue component
    and travels to some element on the html page. However the v-model
    directive maintains the dynamical direction of the arrow itself but
    it adds a new origin point – namely, the element containing the
    v-model directive.

  - Example:

    - Non-v-model: Vue component to element **B**

    - Using v-model: Element **A** to Vue component to element **B**

[**https://vuejs.org/v2/guide/events.html**](https://vuejs.org/v2/guide/events.html)

**Event modifiers (can be chained)**

- Stop = stops propagation

- Once = performs method once

- Prevent = prevents default action

**Key modifiers**

- Keyup

**Components**

- Templates based off of components are not instances of the components
  itself – but rather <u>copies</u> of the component.

- The Vue instance template itself MUST have a single direct child div
  with the element ID

- Any components within the Vue instance template don’t need a single
  direct child div.

- **Process for Nesting Components**

  - Vue files (components) are exported in their script tags with their
    name

    - export default {

    -   name: 'app',

  - Main JS file will …

    - **(A)** import Main Vue (as a node module through NPM)

    - **(B)** Import the <u>root</u> component (‘app’ for example)

    - **(C)** Render <u>root</u> component to DOM via query selector
      (‘#app’ for example)

      - import Vue from 'vue' (A)

      - import App from './App.vue' (B)

      - 

      - new Vue({ (C)

      -   render: h =\> h(App),

      - }).$mount('#app')

    - Additional components can be added to <u>root</u> component by…

      - **(A)** Importing them in the script of the <u>root</u>
        component

      - **(B**) Listing it by name in the components section of the
        <u>root</u> component

        - \<script\>

        - import ComponentA from './components/ComponentA' (A)

        - 

        - export default {

        -   name: 'app',

        -   components: { (B)

        -     ComponentAp

        -   },

      - Added to the template section of the <u>root</u> component using
        the component name as the element name.

        - \<template\>

        -   \<div id="app"\>

        -     \<p\> {{ greeting }}\</p\>

        -     \<ComponentA /\>

        -   \</div\>

        - 

        - \</template\>

- **How nested components communicate**

  - A parent component can communicate with its a nested/child component
    by

    - Using bind directive in the template tag of the child/nested
      component to add the attribute of the data they wish to pass.

> \<ComponentA :propertyA=" propertyA "  /\> //v-bind = :

- The nested components can then get the name of the value of this
  attribute and add is as a member in the ‘props’ array. The ‘props’
  array is an array which is declared in the nested component.

> props:\[‘propertyA’\],

- A nested/child component can communicate with its parent component by
  calling a method which sends a custom event to its parent component
  (and optionally passes a parameter as well). This method will invoke
  the ‘emit’ function ( $emit() ) which is a vue keyword.

  - methods:{

  -         customE (someParameter){

  -             this.$emit(‘customEtoParent’, { 'someParameter' })

  -         }

  - ‘customEventX’ will pass the custom event ‘customEtoParent’ to the
    parent component along with the parameter ‘someParameter’

- The parent component can listen to this child component and listen
  specifically for this custom event by adding an event attribute on the
  template tag of the child element itself. This event <u>attribute
  name</u> will correspond to the name of the function being emitted by
  the child component. The <u>value of the event attribute</u> will
  correspond to the method that is to be called by the parent component.

  - \<Component A :propertyA="propertyA" 

  - @customEtoParent="customEtoParentM" /\> //v-on = @

- Now, this custom event can also be used as a method in the parent
  component to call a function.

  -   methods:{

  -     customEtoParentM(){

  -       Console.log(‘do this’)

  -     },

- **As we can see, parent components communicate to child components
  through the use of binding data to the child components template
  element tag. and child components receive this data through the use of
  props.**

> **Inversely, child components communicate with their parent components
> through sending custom events which emit a function to the parent
> components. Parents receive this function by having a event listener
> placed on the child components element tag and listen for this
> function.**

# Vuex (state management)

- **<u>State</u>**: The relationship between some data and its
  interaction with what is dynamically displayed on screen.

  - <u>Local</u>: Relevant to some data and a single component.

  - <u>Global</u>: Relevant to some data and a multiple components or an
    app-wide component.

- **<u>Vuex</u>**: Helps us manage the Global state

<u>Good to know</u>

- Routers: <https://router.vuejs.org/guide>

## Nuxt

<https://www.section.io/engineering-education/node-vs-nuxt/#:~:text=What%20it%20is%3F-,Node.,building%20universally%20rendered%20web%20applications.&text=Nuxt%20can%20be%20used%20to,side%20rendering%20and%20good%20SEO>.

- 
