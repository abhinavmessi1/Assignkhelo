import 'package:assigment/constants/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({Key? key}) : super(key: key);

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            onPageChanged: (value, _) {
              setState(() {
                _current = value;
              });
            },
            autoPlay: true,
            height: 200.0,
            enlargeCenterPage: true,
          ),
          items: Constants.crouselImageList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    child: Image.network(
                  i,
                  fit: BoxFit.cover,
                ));
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: Constants.crouselImageList.map(
            (image) {
              int index = Constants.crouselImageList.indexOf(image);
              return Container(
                width: 20.0,
                height: 4.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: _current == index ? Colors.amber : Colors.grey,
                ),
              );
            },
          ).toList(), // this was the part the I had to add
        ),
      ],
    );
  }
}
