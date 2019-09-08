import React, { Component } from "react";
import Card from "react-bootstrap/Card";
export class ItemCard extends Component {
  render() {
    return (
      <div style={{ padding: "1em" }}>
        <Card className="mx-auto">
          <Card.Img variant="top" src="https://via.placeholder.com/100x80" />
          <Card.Body>
            <Card.Title>Nama obat</Card.Title>
            <Card.Text>
              <strong>Rp. 52.000,-</strong>
            </Card.Text>
          </Card.Body>
        </Card>
      </div>
    );
  }
}

export default ItemCard;
