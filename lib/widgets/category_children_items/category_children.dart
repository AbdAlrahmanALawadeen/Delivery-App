import 'package:delivery_app/data/data.dart';
import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/widgets/category_child_details/details.dart';
import 'package:flutter/material.dart';

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

 

  List<Categorychild> children = [];

  @override
  Widget build(BuildContext context) {
    children = categoryChildren.where((child) => child.parent == widget.title).toList();

    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 450,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: children.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: (){  
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => ShowDetails(categorychild: children[index],),));
                  },
                  child: Row( 
                    children: [
                      Image.asset(children[index].link, height: 128, width: 177,),
                      
                      const SizedBox(width: 10,),
                                  
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(children[index].title, style: const TextStyle(color: Color.fromRGBO(45, 12, 87, 1), fontWeight: FontWeight.bold, fontSize: 15),),
                            
                            const SizedBox(height: 10,),
                            
                            Text('${children[index].price} \u20AC / ${children[index].quantity}', style: const TextStyle(color: Color.fromRGBO(45, 12, 87, 1), fontWeight: FontWeight.bold, fontSize: 15)),
                            
                            const SizedBox(height: 30, ),
                            
                            Row(              
                              children: [
                                Expanded(
                                  flex: 1,
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
                                
                                const SizedBox(width: 10.0,),
                                
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      )
                                    ), 
                                    child: const Icon(Icons.shopping_cart_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );  
            }
          ),
        ),
      ),
    );
  } 
}