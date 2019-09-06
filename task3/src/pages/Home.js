import React, { Component } from "react";
import Container from "react-bootstrap/Container";
import Promotion from "../components/Promotion";
import Kategori from "../components/Kategori";
export class Home extends Component {
  render() {
    return (
      <main>
        <Container className="bg-white">
          <Promotion />
          <Kategori />
        </Container>
      </main>
    );
  }
}

export default Home;
