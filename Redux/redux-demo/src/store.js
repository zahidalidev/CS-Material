import { createStore } from 'redux'
import { devToolsEnhancer } from "redux-devtools-extension"
import reducer from "./reducer";

const store = createStore(reducer, devToolsEnhancer({ trace: true }))    //this is a higher order function bcz it takes function as a argument
export default store;