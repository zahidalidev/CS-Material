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

### **Steps**
1- Design the store.<br>
2- Define the actions.<br>
3- Create a reducer.<br>
4- Set up the store.<br>

## **1- Design the store.**
```js
{
    bugs: [
        {
            id: 1, 
            description: "",
            resolved: false
        }
    ],
    currentUser: {}
}
```
## **2- Define the actions.**
```js
{
    type: "ADD_BUG",
    payload: {
        description: "..."
    }
}
// or
{
    type: "REMOVE_BUG",
    payload: {
        id: 1
    }
}
```

## **3- Create a reducer.**
reducer has to be pure function.
```js
// reducer.js
// [] state is an array

let lastId = 0;
export default function reducer(state = [], action) {
    switch (action.type) {
        case "BUG_ADDED":
            return [ 
                ...state,
                {
                    id: ++lastId,
                    description: action.payload.description,
                    resolved: false
                }
            ]

        case "BUG_REMOVED":
            return state.filter(bug => bug.id !== action.payload.id);

        default:
            return state;
    }
}

```

## **4- Set up the store.**

```js
// store.js

import { createStore } from 'redux'

import reducer from "./reducer";

const store = createStore(reducer) //this is a higher order function bcz it takes function as a argument
export default store;
```

## **Dispatcing action (using store)**
```js
import store from "./store";

store.dispatch({
    type: "BUG_ADDED",
    payload: {
        description: 'bug_1'
    }
})

store.dispatch({
    type: "BUG_REMOVED",
    payload: {
        id: 1
    }
})

console.log(store.getState());
```

## **Subscribing to the Store**
```js
import store from "./store";

const unsubscribe = store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch({
    type: "BUG_ADDED",
    payload: {
        description: 'bug_1'
    }
})

unsubscribe(); // unsubscribe to prevent memory eg. when user navigate from this page to another mean when UI component is not visible

store.dispatch({
    type: "BUG_REMOVED",
    payload: {
        id: 1
    }
})

console.log(store.getState());

```

# **Redux from Scratch**


## **actionTypes.js**
```js
export const BUG_ADDED = 'BUG_ADDED'
export const BUG_REMOVED = 'BUG_REMOVED'
export const BUG_RESOLVED = 'BUG_RESOLVED'
```

## **reducer.js**
```js
import * as actions from "./actionTypes";
// [] state is an array

let lastId = 0;
export default function reducer(state = [], action) {
    switch (action.type) {
        case actions.BUG_ADDED:
            return [
                ...state,
                {
                    id: ++lastId,
                    description: action.payload.description,
                    resolved: false
                }
            ]

        case actions.BUG_REMOVED:
            return state.filter(bug => bug.id !== action.payload.id);

        case actions.BUG_RESOLVED:
            return state.map(bug => bug.id !== action.payload.id ? bug : { ...bug, resolved: true })

        default:
            return state;
    }
}
```


## **store.js**
```js
import reducer from "../reducer";

function createStore(reducer) {
    let state;
    let listeners = [];

    function getState() {
        return state;
    }

    function dispatch(action) {
        state = reducer(state, action);

        for (let i = 0; i < listeners.length; i++)
            listeners[i]();  // calling all listenres when state change mean action is ispatched
    }

    function subscribe(listener) {
        listeners.push(listener);  //push listenre into array of listeners to call later when state change
    }

    // Public
    return {
        dispatch,
        getState,
        subscribe
    };

}

export default createStore(reducer);  //passing reducer and export
```

## **actionCreator.js**
```js
import * as actions from "./actionTypes";


export function BUG_ADDED(description) {
    return {
        type: actions.BUG_ADDED,
        payload: {
            description
        }
    }
}
export function BUG_REMOVED(id) {
    return {
        type: actions.BUG_REMOVED,
        payload: {
            id
        }
    }
}

export function BUG_RESOLVED(id) {
    return {
        type: actions.BUG_RESOLVED,
        payload: {
            id
        }
    }
}
```

## **index.js**
```js
import createStore from "./reduxScratch/store";

createStore.subscribe(() => {
    console.log("custom changed!");
});

createStore.dispatch(actionCreators.BUG_ADDED("BUG 1"));

console.log(createStore.getState());

```

# **Debug Redux application**

1- Add Redux DevTools extension in chrome.<br>
2- npm i redux-devtools-extension

```js
// store.js

import { createStore } from 'redux'
import { devToolsEnhancer } from "redux-devtools-extension"
import reducer from "./reducer";

const store = createStore(reducer, devToolsEnhancer({ trace: true }))    //this is a higher order function bcz it takes function as a argument
export default store;
```