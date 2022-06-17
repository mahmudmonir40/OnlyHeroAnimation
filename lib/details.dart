

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,

        title: Row(
          children: [
            Text("Lalbagh Kella",style: TextStyle(color: Colors.black),),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Hero(
              tag: 'img',

              child: Image.network("https://www.travelandexplorebd.com/storage/app/public/posts/October2019/dreamstime_xxl_55742473.jpg")),


          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Lalbagh Port",style: TextStyle(color: Colors.black,fontSize: 22.0),),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th-century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh. The construction was started in 1678 AD by Mughal Subahdar Muhammad Azam Shah, who was a son of Emperor Aurangzeb and later emperor himself. His successor, Shaista Khan, did not continue the work, though he stayed in Dhaka up to 1688.",style: TextStyle(color: Colors.blueGrey,fontSize: 20.0,fontWeight: FontWeight.w400),),
          )

        ],
      ),
    );
  }
}
