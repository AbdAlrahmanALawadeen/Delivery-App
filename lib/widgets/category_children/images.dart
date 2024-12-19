import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/API/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  List<String> images = [];

  @override
  void initState(){
    super.initState();
    startApp();
  }

  void startApp() async {
    final Api api = Api();

    try {
      var data = await api.fetchImages();
      setState(() {
        images = data;
      });
    } 
    catch (e) {
      images = [];
    }
  }

  @override
  Widget build(BuildContext context) {

    return Stack(             
      children: [
        Positioned(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: CarouselSlider.builder(         
              carouselController: _controller,
              options: CarouselOptions(
                height: 358.h,
                viewportFraction: 1,
                autoPlay: false,
                onPageChanged: (index, reason){
                  setState(() {
                    _currentIndex = index;
                  });             
                }  
              ),
              itemBuilder: (BuildContext context, int index, int realIndex){
                return Image.asset(images[index], width: MediaQuery.sizeOf(context).width, fit: BoxFit.cover,);
              }, itemCount: images.length,
            ),
          ),
        ),
                    
        Positioned(
          top : 258.h,
          left: 0.0.w,
          right: 0.0,
          child: Row(
            mainAxisAlignment : MainAxisAlignment.center,
            children: images.asMap().entries.map((entery){
              return GestureDetector(
                onTap: () => _controller.animateToPage(entery.key),
                child: Container(
                  width: 8.0.w,
                  height: 8.0.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.0.w),
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
    );
  }
}