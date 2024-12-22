import 'package:delivery_app/data/web_services/http.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Categorychildren extends StatefulWidget{
  const Categorychildren({super.key, required this.title});

  final String title;

  @override
  State<Categorychildren> createState() {
    return _CategorychildrenState();
  }
  
}

class _CategorychildrenState extends State<Categorychildren>{
  _CategorychildrenState();

  List<Categorychild> categoryChildren = [];

  @override
  void initState(){
    super.initState();
    startApp();
  }

  void startApp() async {
    final Api api = Api();

    try {
      var data = await api.fetchCategoryChild();
      setState(() {
        categoryChildren = data;
      });
    } 
    catch (e) {
      categoryChildren = [];
    }
  }

  List<Categorychild> children = [];

  @override
  Widget build(BuildContext context) {
    children = categoryChildren.where((child) => child.parent == widget.title).toList();

    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: (MediaQuery.sizeOf(context).height * 0.45),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(       
            onTap: (){  
              Navigator.pushNamed(
                context, '/details',
                arguments : {'child' : children[index]},
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
                          fit: BoxFit.cover
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
                            
                            SizedBox(height: 12.h,),
                            
                            Row(
                              children: [
                                Text(
                                  '${children[index].price} ', 
                                  style: TextStyle(
                                    color: const Color.fromRGBO(45, 12, 87, 1), 
                                    fontFamily: FontFamily.sFProText,
                                    fontSize: 22.sp,
                                    fontWeight : FontWeight.w700,
                                  )
                                ),
                                          
                                Text(
                                  '\u20AC / ${children[index].quantity}',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(149, 134, 168 , 1), 
                                    fontWeight: FontWeight.w400, 
                                    fontFamily: FontFamily.sFProText,
                                    fontSize: 16.sp
                                  )
                                )
                              ],
                            ),
                            
                            SizedBox(height: 20.h),
                                  
                            Row(              
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 40.h,
                                    width: 78.w,
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),          
                                        ),
                                        backgroundColor: Colors.white
                                      ), 
                                      child: SvgPicture.asset('assets/images/heart.svg',),
                                    ),
                                  ),
                                ),
                                
                                SizedBox(width: 12.w,),
                    
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 40.h,
                                    width: 78.w,
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        )
                                      ), 
                                      child: SvgPicture.asset('assets/images/shopping-cart.svg',),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );  
        }
      ),
    );
  } 
}