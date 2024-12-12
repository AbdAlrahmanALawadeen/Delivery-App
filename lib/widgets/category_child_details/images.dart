import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/data/data.dart';
import 'package:flutter/material.dart';

class Images extends StatefulWidget{
  const Images({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Images();
  }
  
}

class _Images extends State<Images> {

  var _currentIndex = 0;

  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> pictureUrls = List.generate(
    images.length, 
    (int index) => images[index],
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Stack(             
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1,
            height: MediaQuery.sizeOf(context).height / 3 + 10,
            autoPlay: false,
            onPageChanged: (index, reason){
              setState(() {
                _currentIndex = index;
              });
              
            }
            
          ),
          itemBuilder: (BuildContext context, int index, int realIndex){
            return SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset(pictureUrls[index], fit: BoxFit.cover,),
            );
          }, itemCount: pictureUrls.length,
        ),
                    
        Positioned(
          bottom: 40.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment : MainAxisAlignment.center,
            children: pictureUrls.asMap().entries.map((entery){
              return GestureDetector(
                onTap: () => _controller.animateToPage(entery.key),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entery.key ? Colors.white : const Color.fromARGB(255, 213, 202, 202),
                  ),
                ),
              );
            }
            ).toList()
          )
        ),
      ],      
    ),
          );
  }
}