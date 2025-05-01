import { createRoot } from "react-dom/client";
import "./index.css";
import { AppProvider } from "./context/AppContext";
import { RouterProvider } from "react-router-dom";
import { router } from "./routes/root";


createRoot(document.getElementById("root")).render(
    <AppProvider>
        <RouterProvider router={router} />  
    </AppProvider>
);
