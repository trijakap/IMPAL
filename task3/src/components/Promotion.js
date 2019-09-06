import React, { Component } from "react";
import Slider from "react-slick";
export class Promotion extends Component {
  render() {
    const settings = {
      dots: false,
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3
    };
    return (
      <div>
        <Slider {...settings}>
          <div>
            <img src="http://placekitten.com/g/400/300" alt="cats" />
          </div>
          <div>
            <img src="http://placekitten.com/g/400/300" alt="cats" />
          </div>
          <div>
            <img src="http://placekitten.com/g/400/300" alt="cats" />
          </div>
          <div>
            <img src="http://placekitten.com/g/400/300" alt="cats" />
          </div>
        </Slider>
      </div>
    );
  }
}

export default Promotion;
