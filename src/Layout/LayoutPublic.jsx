import { Outlet } from "react-router-dom";
const LayoutPublic = () => {
  return (
    <div className="container">
        <Outlet/>
    </div>
  );
};

export default LayoutPublic;