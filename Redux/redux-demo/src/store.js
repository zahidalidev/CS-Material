import { createStore } from 'redux'

import reducer from "./reducer";

const store = createStore(reducer)    //this is a higher order function bcz it takes function as a argument
export default store;