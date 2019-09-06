import React, { Component } from "react";
import Container from "react-bootstrap/Container";
export class NotFound extends Component {
  render() {
    return (
      <main>
        <Container>
          <div style={{ textAlign: "center" }}>
            <br />
            <br />
            <br />
            <br />
            {/* wtf wkw */}
            <br />
            <h1>Halaman yang anda cari tidak ditemukan</h1>
          </div>
        </Container>
      </main>
    );
  }
}

export default NotFound;
