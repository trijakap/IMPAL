import React, { Component } from "react";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

export class Footer extends Component {
  render() {
    return (
      <div>
        <Container id="footer">
          <Row>
            <Col></Col>
            <Col></Col>
          </Row>
        </Container>
      </div>
    );
  }
}

export default Footer;
