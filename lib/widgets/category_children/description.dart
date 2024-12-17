import 'package:delivery_app/models/category_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Description extends StatefulWidget{
  const Description({super.key, required this.categoryChild});

  final Categorychild categoryChild;

  @override
  State<StatefulWidget> createState() {
    return _Description();
  }
}

class _Description extends State<Description>{
  @override
  Widget build(BuildContext context) {
    print(30.sp);
    return Positioned(
      top: 281.h,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 615.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 245, 245, 1),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0.r), topRight: Radius.circular(20.0.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.h,),
      
              Text(
                widget.categoryChild.title, 
                style: TextStyle(
                  color: const Color.fromRGBO(45, 12, 87, 1), 
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SFProDisplay',
                ), 
              ),
      
              SizedBox(height: 16.h,),
      
              SizedBox(
                height: 44.h,
                child: Row(
                  children: [
                  Text(
                    widget.categoryChild.price.toStringAsFixed(2), 
                    style: TextStyle(
                      color: const Color.fromRGBO(45, 12, 87, 1), 
                      fontSize: 32.sp, 
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SFProText',
                    ),
                  ),
                
                  Text(
                    ' \u20AC/${widget.categoryChild.quantity}', 
                    style: TextStyle(
                      color: Colors.grey, 
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SFProText',
                    ),
                  )
                  ],
                ),
              ),
      
              SizedBox(height: 8.h,),
              
              Row(
                children: [
                Text(
                  '~150 gr/${widget.categoryChild.quantity}', 
                  style: TextStyle(
                    color: const Color.fromRGBO(6, 190, 119, 1), 
                    fontSize: 17.sp, 
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                  ),
                ),
                ],
              ),
              
              SizedBox(height: 32.h),
      
              Text(
                'Spain', 
                style : TextStyle(
                  color: const Color.fromRGBO(45, 12, 87, 1), 
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SFProText',
                )
              ),
      
              SizedBox(height: 16.h,),
      
              SizedBox(
                height: 194.h,
                child: SingleChildScrollView(
                  
                  child: Text(
                    'Eat imagine you chiefly few end ferrars compass. Be visitor females am ferrars inquiry. Latter law remark two lively thrown. Spot set they know rest its. Raptures law diverted believed jennings consider children the see. Had invited beloved carried the colonel. Occasional principles discretion it as he unpleasing boisterous. She bed sing dear now son half.On it differed repeated wandered required in. Then girl neat why yet knew rose spot. Moreover property we he kindness greatest be oh striking laughter. In me he at collecting affronting principles apartments. Has visitor law attacks pretend you calling own excited painted. Contented attending smallness it oh ye unwilling. Turned favour man two but lovers. Suffer should if waited common person little oh. Improved civility graceful sex few smallest screened settling. Likely active her warmly has.Necessary ye contented newspaper zealously breakfast he prevailed. Melancholy middletons yet understood decisively boy law she. Answer him easily are its barton little. Oh no though mother be things simple itself. Dashwood horrible he strictly on as. Home fine in so am good body this hope.Certainty determine at of arranging perceived situation or. Or wholly pretty county in oppose. Favour met itself wanted settle put garret twenty. In astonished apartments resolution so an it. Unsatiable on by contrasted to reasonable companions an. On otherwise no admitting to suspicion furniture it.In by an appetite no humoured returned informed. Possession so comparison inquietude he he conviction no decisively. Marianne jointure attended she hastened surprise but she. Ever lady son yet you very paid form away. He advantage of exquisite resolving if on tolerably. Become sister on in garden it barton waited on.Not far stuff she think the jokes. Going as by do known noise he wrote round leave. Warmly put branch people narrow see. Winding its waiting yet parlors married own feeling. Marry fruit do spite jokes an times. Whether at it unknown warrant herself winding if. Him same none name sake had post love. An busy feel form hand am up help. Parties it brother amongst an fortune of. Twenty behind wicket why age now itself ten. ',
                    style: TextStyle(
                      color: Colors.grey, 
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SFProText',
                    ),
                  ),
                ),
              ),
      
              SizedBox(height: 56.h,),
      
              Row(
                children: [
                  Expanded(
                    
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 30.w),
                      height: 56.h,
                      child: ElevatedButton(
                        
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0.r),
                            
                          ),
                          backgroundColor: Colors.white
                        ), 
                        child: SvgPicture.asset(
                          'assets/images/heart.svg'
                        )
                      ),
                    ),
                  ),
                  
                  SizedBox(width: 8.0.w,),
                  
                  Expanded(
                    
                    flex: 2,
                    child: SizedBox(
                      height: 56.h,
                      child: ElevatedButton.icon(
                        
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0.r),
                          )
                        ), 
                        icon: SvgPicture.asset(
                          'assets/images/shopping-cart.svg'
                        ),
                        label: Text(
                          'ADD TO CART', 
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SFProText',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}