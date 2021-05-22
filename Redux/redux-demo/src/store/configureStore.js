import { configureStore } from "@reduxjs/toolkit"
import reducer from "./reducer";
// import reducer from "./bugs";

export default function () {
    return configureStore({
        reducer
    })    //this is a higher order function bcz it takes function as a argument
}