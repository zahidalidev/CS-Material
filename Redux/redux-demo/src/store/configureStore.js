import { configureStore, getDefaultMiddleware } from "@reduxjs/toolkit"
import toast from "./middleware/toast";
import func from "./middleware/func";
import logger from "./middleware/logger";
import reducer from "./reducer";
// import reducer from "./bugs";

// export default function () {
//     return configureStore({
//         reducer,
//         middleware: [logger, func]
//     })    //this is a higher order function bcz it takes function as a argument
// }
export default function () {
    return configureStore({
        reducer,
        middleware: [...getDefaultMiddleware(), logger, toast]
    })    //this is a higher order function bcz it takes function as a argument
}