import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  var _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        if (state is LocalLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } 
        else if (state is ImagesLoaded) {
          final images = state.images.cast<String>();
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
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Image.asset(
                        images[index],
                        width: MediaQuery.sizeOf(context).width,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('Image not available'),
                          );
                        },
                      );
                    },
                    itemCount: images.length,
                  ),
                ),
              ),

              Positioned(
                top: 258.h,
                left: 0.0.w,
                right: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0.w,
                        height: 8.0.h,
                        margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? Colors.white
                              : const Color.fromARGB(255, 213, 202, 202),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        } 
        else if (state is LocalError) {
          return Center(
            child: Text(
              state.message,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
          );
        } 
        else {
          return const Center(
            child: Text('No data available.'),
          );
        }
      },
    );
  }
}
