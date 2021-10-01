import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> imgList = [
  'https://source.unsplash.com/1600x500/?mac',
  'https://source.unsplash.com/1600x500/?programming',
  'https://source.unsplash.com/1600x500/?flutter',
  'https://source.unsplash.com/1600x500/?python',
  'https://source.unsplash.com/1600x500/?jobs',
];

class CarrouselSliderScreen extends StatelessWidget {
  const CarrouselSliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 500,
        viewportFraction: 0.8,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayCurve: Curves.easeInOutCubic,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: imgList.length,
      itemBuilder: (context, index, realIndex){
        final listImage = imgList[index];
        return buildImage(listImage, index);
      }
    );
  }
}

Widget buildImage(String listImage, int index) => Container(width: 1920,
  margin: EdgeInsets.symmetric(horizontal: 6),
  color: Colors.grey,
  child: Image.network(
      listImage,
      fit: BoxFit.cover,
  ),
);

