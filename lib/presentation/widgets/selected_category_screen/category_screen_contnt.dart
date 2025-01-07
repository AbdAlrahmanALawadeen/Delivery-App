import 'package:delivery_app/business_logic/cubit/filters_cubit.dart';
import 'package:delivery_app/core/di.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/presentation/widgets/filters.dart';
import 'package:delivery_app/presentation/widgets/search.dart';
import 'package:delivery_app/presentation/widgets/selected_category_screen/category_children.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChildScreenContent extends StatefulWidget {
  const ChildScreenContent({super.key, required this.title});

  final String title;

  @override
  State<ChildScreenContent> createState() => _ChildScreenContentState();
}

class _ChildScreenContentState extends State<ChildScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          Positioned(
            right: 0.0.h,
            top: -10.0.h,
            child: SvgPicture.asset(
              Assets.images.vector,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: -20.0.w,
            top: 42.h,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset(
                Assets.images.arrowBack,
              ),
            ),
          ),
          Positioned(
            top: 97.h,
            left: 0.0.w,
            child: Text(
              widget.title,
              style: TextStyle(
                fontFamily: FontFamily.sFProDisplay,
                color: const Color.fromRGBO(45, 12, 87, 1),
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 165.h,
            right: 10.h,
            left: 0.h,
            child: const Search(),
          ),
          Positioned(
            top: 250.h,
            child: BlocProvider(
              create: (_) => FiltersCubit(locator<CategoryRepository>()),
              child: Filters(parent: widget.title),
            ),
          ),

          Positioned(
            top: 323.h,
            child: CategoryChildren(title: widget.title),
          ),
        ],
      ),
    );
  }
}
