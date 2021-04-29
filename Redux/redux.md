# **Redux**
## **Reduc Architecture**
In redux we store application state in single js object called **Store**. This object is the single source of truth for our application state and accessable in the all parts of UI. Redux is build on the top of functional programming principles. **Store** is a immutable object to update it we should create a function that take a Store as an argument and returns the updated store. This function is called **Reducer**. So **Reducer** is a function that take the current instance if the Store and return the updated Store. **action** describe what just happen. **action** is the second parameter in the reducer base on the type of **action** reducer will know what property of the state to update. <br>
Store can have many slices.
```js
{
    products: [],
    cart: {}
}
```
Here are two slices of store cart and products each **reducer** will responcible for updating specific slice of the store. <br>

When user perform an action lets say add an item to shoping cart. We create an action object then dispatch it. The store object has a dispatch method that takes an action then forward this action to the reducer so we do not call the reducer directly we just work with the store store is the incharge of calling the reducer. reducer compute the new state and returns it next store will set the state internally and then notify the UI component about the update. These UI component will then pull out the updated data and referesh themself.
