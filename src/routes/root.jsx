// imports
import { createBrowserRouter, Navigate } from "react-router-dom"
//Layouts
import  LayoutPublic  from "../Layout/LayoutPublic";

//pages
import Inicio from '../pages/Inicio';
import Restaurantes from '../pages/Restaurantes';
import Pedidos from '../pages/Pedidos';
import Paquetes from '../pages/Paquetes';
import Administrador from "../pages/Administrador";
import Error from '../pages/Error';
import Registro from '../pages/Registro';
import Direccion from '../pages/Direccion';
import Pago from '../pages/Pago';

//admin Restaurants pages
import RestPedidos from '../pages/admin-restaurant/RestPedidos';
import RestPaquetes from '../pages/admin-restaurant/RestPaquetes';

//admin pages
import AdminPaquetes from "../pages/admin/AdminPaquetes";
import AdminPedidos from "../pages/admin/AdminPedidos";
import AdminRestaurantes from "../pages/admin/AdminRestaurantes";
import AdminUsuarios from "../pages/admin/AdminUsuarios";

export const router = createBrowserRouter([
    {
        path: '/',
        element: <LayoutPublic />,
        errorElement: <Error />,
        children: [
            { index: true, element: <Navigate to="/inicio" replace /> },
            { path:'inicio', element: <Inicio /> },
            { path: 'restaurantes', element: <Restaurantes /> },
            { path: 'paquetes', element: <Paquetes /> },
            { path: 'pedidos', element: <Pedidos /> },
            { path: 'administrador', element: <Administrador />, children:[
                {path: 'restaurante/pedidos', element: <RestPedidos/>},
                {path: 'restaurante/paquetes', element: <RestPaquetes/>},
                {path: 'admin/usuarios', element: <AdminUsuarios />},
                {path: 'admin/pedidos', element: <AdminPedidos />},
                {path: 'admin/paquetes', element: <AdminPaquetes />},
                {path: 'admin/restaurantes', element: <AdminRestaurantes />},
            ]},
            { path: 'registro', element: <Registro /> },
            { path: 'direccion', element: <Direccion /> },
            { path: 'pago', element: <Pago /> },
        ]
    }
]);