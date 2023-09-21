import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomSummaryOrder extends StatelessWidget {
  final String ? name;
  final String ? size;
  final int ? qty;
  final String ? image;
  final double? price;
  const CustomSummaryOrder({super.key, this.name, this.qty, this.size,this.image, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              padding:const EdgeInsets.all(10),
                              decoration:  BoxDecoration(
                               //color: Colors.amber,
                               image: DecorationImage(image:NetworkImage('$image'), fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 150,
                                 
                                  child: Text("$name", maxLines:1, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey[700],overflow: TextOverflow.ellipsis,),)),
                                Row(
                                  children: [
                                    Text("$size", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.grey[400], fontFamily: 'poppins-regular'
                                    ),),
                                    const SizedBox(width: 10,),
                                     Text("x$qty", style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,fontFamily: 'poppins-regular'),),
                                  ],
                                ),
                               
                              ],
                            ),
                             const Spacer(),
                               Text(
                             "\$${NumberFormat('###0.00').format(price)}",
                                style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blueAccent,fontFamily: 'poppins-regular'),
                              ),
    
                          ],
                        ),
    );
  }
}