import logo from "/images/quiz1/logo.svg";
import { FaBars, FaFacebook, FaTwitter, FaSquarespace } from "react-icons/fa";

const NavbarTour_14 = () => {
  return (
    <nav className="navbar">
      <div className="nav-center">
        <div className="nav-header">
          <img src={logo} className="nav-logo" alt="backroads" />
          <button type="button" className="nav-toggle" id="nav-toggle">
            <FaBars />
          </button>
        </div>
        <ul className="nav-links" id="nav-links">
          <li>
            <a href="/" className="nav-link">
              {" "}
              TKUdemo{" "}
            </a>
          </li>

          <li>
            <a href="#home" className="nav-link">
              {" "}
              home{" "}
            </a>
          </li>

          <li>
            <a href="#about" className="nav-link">
              {" "}
              about{" "}
            </a>
          </li>

          <li>
            <a href="#services" className="nav-link">
              {" "}
              services{" "}
            </a>
          </li>

          <li>
            <a href="#tours" className="nav-link">
              {" "}
              tours
            </a>
          </li>
        </ul>

        <ul className="nav-icons">
          <li>
            <a
              href="https://www.twitter.com"
              target="_blank"
              rel="noreferrer"
              className="nav-icon"
            >
              <FaFacebook />
            </a>
          </li>
          <li>
            <a
              href="https://www.twitter.com"
              target="_blank"
              rel="noreferrer"
              className="nav-icon"
            >
              <FaTwitter />
            </a>
          </li>
          <li>
            <a
              href="https://www.twitter.com"
              target="_blank"
              rel="noreferrer"
              className="nav-icon"
            >
              <FaSquarespace />
            </a>
          </li>
        </ul>
      </div>
    </nav>
  );
};

export default NavbarTour_14;
