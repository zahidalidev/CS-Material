### What is JSX <!-- const element = <h1>Hello, world!</h1>; -->
- JSX is not a string not HTML, JSX stand for JavaScript XML. It is simply a syntax extension of javascript. It allows us to directly write HTML
in react (within javascript code). Instead of separating the markup and logic in separated files, React uses components for this purpose.
- At build time the JSX is compiled into imperative JavaScript code. At runtime this code is loaded into the browser and executed. Both Babel and
TypeScript can compile JSX into JavaScript. Therefore it integrates easily into a modern JavaScript build setup where either Babel or TypeScript are typically used.
- JSX is an Expression Too: After compilation, JSX expressions become regular JavaScript function calls and evaluate to JavaScript objects.
 
### Babel in React
-  With JSX, it is easy to define UI components in React. JSX should not be implemented directly by browsers, but instead requires a compiler to transform it into ECMAScript. This is where Babel comes in. Babel acts as this compiler allowing us to leverage all the benefits of JSX while building React components.'
- Babel is a toolchain that is mainly used to convert ECMAScript 2015+ code into a backwards compatible version of JavaScript in current and older browsers or environments.
- React doesn't "need" babel or webpack but the library is built on the concept of using ES6 javascript syntax and JSX (essentially HTML in JS). React however can be used without ES6 and JSX which would remove the initial need for Babel but you would lose the potential benefits of ES6 and JSX.
- Babel is a JavaScript transpiler that converts edge JavaScript into plain old ES5 JavaScript that can run in any browser (even the old ones). It makes available all the syntactical sugar that was added to JavaScript with the new ES6 specification, including classes, fat arrows and multiline strings.
- Babel compiles JSX down to React.createElement() calls.

**These two examples are identical:**
```
const element = (
  <h1 className="greeting">
    Hello, world!
  </h1>
);

const element = React.createElement(
  'h1',
  {className: 'greeting'},
  'Hello, world!'
);
```
- React.createElement() performs a few checks to help you write bug-free code but essentially it creates an object like this:

```
// Note: this structure is simplified
const element = {
  type: 'h1',
  props: {
    className: 'greeting',
    children: 'Hello, world!'
  }
};
```
These objects are called “React elements”. You can think of them as descriptions of what you want to see on the screen. React reads these objects and uses them to construct the DOM and keep it up to date.

### escape
- The escape() function computes a new string in which certain characters have been replaced by a hexadecimal escape sequence. Note: This function was used mostly for URL queries (the part of a URL following ? ) —not for escaping ordinary String literals, which use the format " \xHH "

### Updateing React Element
- React elements are immutable. Once you create an element, you can’t change its children or attributes. An element is like a single frame in a movie: it represents the UI at a certain point in time.
- With our knowledge so far, the only way to update the UI is to create a new element, and pass it to ReactDOM.render().

