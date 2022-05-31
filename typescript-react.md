# TypeScript

### TypeScript: A Static Type Checker
- TypeScript is JavaScript’s runtime with a compile-time type checker. 
- some languages wouldn’t allow buggy programs to run at all. Detecting errors in code without running it is referred to as **static checking**. Determining what’s an error and what’s not based on the kinds of values being operated on is known as static type checking.
- TypeScript checks a program for errors before execution, and does so based on the kinds of values, it’s a static type checker. For example, the below example has an error because of the type of obj. Here’s the error TypeScript found:

```
const obj = { width: 10, height: 15 };
const area = obj.width * obj.heigth;
Property 'heigth' does not exist on type '{ width: number; height: number; }'. Did you mean 'height'?
```
- TypeScript is a language that is a superset of JavaScript: JS syntax is therefore legal TS. Syntax refers to the way we write text to form a program. TypeScript doesn’t consider any JavaScript code to be an error because of its syntax. This means you can take any working JavaScript code and put it in a TypeScript file without worrying about exactly how it is written.
- However, TypeScript is a typed superset, meaning that it adds rules about how different kinds of values can be used. The earlier error about obj.heigth was not a syntax error: it is an error of using some kind of value (a type) in an incorrect way. As another example, this is JavaScript code that you can run in your browser, and it will log a value:
```
console.log(4 / []);
```
This syntactically-legal program logs Infinity. TypeScript, though, considers division of number by an array to be a nonsensical operation, and will issue an error:
```
console.log(4 / []);
The right-hand side of an arithmetic operation must be of type 'any', 'number', 'bigint' or an enum type.
```
- TypeScript is also a programming language that preserves the runtime behavior of JavaScript. For example, dividing by zero in JavaScript produces Infinity instead of throwing a runtime exception. As a principle, TypeScript never changes the runtime behavior of JavaScript code.
- **Erased Types** Roughly speaking, once TypeScript’s compiler is done with checking your code, it erases the types to produce the resulting “compiled” code. This means that once your code is compiled, the resulting plain JS code has no type information.




