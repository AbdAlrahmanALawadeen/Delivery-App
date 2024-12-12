import 'package:delivery_app/models/category_child.dart';
import 'package:flutter/material.dart';

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
    return Positioned(
      top: MediaQuery.sizeOf(context).height / 3.1,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(246, 245, 245, 1),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
      
              Text(widget.categoryChild.title, style: const TextStyle(color: Color.fromRGBO(45, 12, 87, 1), fontSize: 30,), ),
      
              const SizedBox(height: 20,),
      
              Row(
                children: [
                Text(widget.categoryChild.price.toStringAsFixed(2), style: const TextStyle(color: Color.fromRGBO(45, 12, 87, 1), fontSize: 20, fontWeight: FontWeight.bold),),
                Text(' \u20AC/${widget.categoryChild.quantity}', style: const TextStyle(color: Colors.grey, fontSize: 20),)
                ],
              ),
      
              const SizedBox(height: 20,),
              
              Row(
                children: [
                Text('~150 gr/${widget.categoryChild.quantity}', style: const TextStyle(color: Color.fromRGBO(6, 190, 119, 1), fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
              
              const SizedBox(height: 30,),
      
              const Text('Spain', style : TextStyle(color: Color.fromRGBO(45, 12, 87, 1), fontSize: 25)),
      
              const SizedBox(height: 20,),
      
              const SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  
                  child: Text(
                    'Eat imagine you chiefly few end ferrars compass. Be visitor females am ferrars inquiry. Latter law remark two lively thrown. Spot set they know rest its. Raptures law diverted believed jennings consider children the see. Had invited beloved carried the colonel. Occasional principles discretion it as he unpleasing boisterous. She bed sing dear now son half.On it differed repeated wandered required in. Then girl neat why yet knew rose spot. Moreover property we he kindness greatest be oh striking laughter. In me he at collecting affronting principles apartments. Has visitor law attacks pretend you calling own excited painted. Contented attending smallness it oh ye unwilling. Turned favour man two but lovers. Suffer should if waited common person little oh. Improved civility graceful sex few smallest screened settling. Likely active her warmly has.Necessary ye contented newspaper zealously breakfast he prevailed. Melancholy middletons yet understood decisively boy law she. Answer him easily are its barton little. Oh no though mother be things simple itself. Dashwood horrible he strictly on as. Home fine in so am good body this hope.Certainty determine at of arranging perceived situation or. Or wholly pretty county in oppose. Favour met itself wanted settle put garret twenty. In astonished apartments resolution so an it. Unsatiable on by contrasted to reasonable companions an. On otherwise no admitting to suspicion furniture it.In by an appetite no humoured returned informed. Possession so comparison inquietude he he conviction no decisively. Marianne jointure attended she hastened surprise but she. Ever lady son yet you very paid form away. He advantage of exquisite resolving if on tolerably. Become sister on in garden it barton waited on.Not far stuff she think the jokes. Going as by do known noise he wrote round leave. Warmly put branch people narrow see. Winding its waiting yet parlors married own feeling. Marry fruit do spite jokes an times. Whether at it unknown warrant herself winding if. Him same none name sake had post love. An busy feel form hand am up help. Parties it brother amongst an fortune of. Twenty behind wicket why age now itself ten. ',
                    style: TextStyle(color: Colors.grey, fontSize: 15),),
                ),
              ),
      
              const SizedBox(height: 30,),
      
              Row(
                children: [
                  Expanded(
                    
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      height: 50,
                      child: ElevatedButton(
                        
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            
                          ),
                          backgroundColor: Colors.white
                        ), 
                        child: const Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 8.0,),
                  
                  Expanded(
                    
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                        ), 
                        icon: const Icon(Icons.shopping_cart_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
                        label: const Text('ADD TO CART', style: TextStyle(color: Colors.white),),
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