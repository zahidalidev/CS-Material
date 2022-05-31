# TypeScript

### TypeScript: A Static Type Checker
- some languages wouldn’t allow buggy programs to run at all. Detecting errors in code without running it is referred to as **static checking**. Determining what’s an error and what’s not based on the kinds of values being operated on is known as static type checking.
- TypeScript checks a program for errors before execution, and does so based on the kinds of values, it’s a static type checker. For example, the below example has an error because of the type of obj. Here’s the error TypeScript found:

```
const obj = { width: 10, height: 15 };
const area = obj.width * obj.heigth;
Property 'heigth' does not exist on type '{ width: number; height: number; }'. Did you mean 'height'?
```
