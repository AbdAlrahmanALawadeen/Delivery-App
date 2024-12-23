import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryChildren extends StatefulWidget {
  const CategoryChildren({super.key, required this.title});

  final String title;

  @override
  State<CategoryChildren> createState() => _CategoryChildrenState();
}

class _CategoryChildrenState extends State<CategoryChildren> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchCategoryChild();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        if (state is LocalLoading) {
          return const Center(child: CircularProgressIndicator());
        } 
        else if (state is CategoryChildLoaded) {
          List<Categorychild> children = state.categoryChild.where((child) => child.parent == widget.title).toList();
          if (children.isEmpty) {
            return Center(
              child: Text(
                'No items found.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            );
          }

          return SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.45,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: children.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: {'child': children[index]},
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.h),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 177.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(children[index].link),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.0.w, right: 12.0.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    children[index].title,
                                    style: TextStyle(
                                      color: const Color.fromRGBO(45, 12, 87, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                      fontFamily: FontFamily.sFProText,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Text(
                                        '€${children[index].price}',
                                        style: TextStyle(
                                          color: const Color.fromRGBO(45, 12, 87, 1),
                                          fontFamily: FontFamily.sFProText,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        ' / ${children[index].quantity}',
                                        style: TextStyle(
                                          color: const Color.fromRGBO(149, 134, 168, 1),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: FontFamily.sFProText,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: 40.h,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              backgroundColor: Colors.white,
                                            ),
                                            child: SvgPicture.asset(Assets.images.heart),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: 40.h,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: SvgPicture.asset(Assets.images.shoppingCart),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } 
        else if (state is LocalError) {
          return Center(
            child: Text(
              state.message,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.sp,
              ),
            ),
          );
        } 
        else {
          return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}
