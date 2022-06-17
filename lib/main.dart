import 'package:flutter/material.dart';
import 'package:hero_animation_project/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text("Lalbagh Kella",style: TextStyle(color: Colors.black),),
      ),

      body: Padding(
          padding: EdgeInsets.all(8.0),

        child: Container(
          child: SizedBox(
            height: 500.0,

            child: Card(
              elevation: 2.0,

              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                },

                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),

                        child: Hero(
                            tag: 'img',

                            child: Image.network("https://www.travelandexplorebd.com/storage/app/public/posts/October2019/dreamstime_xxl_55742473.jpg")),
                      ),

                      SizedBox(height: 20.0,),
                      Text("Lalbagh Port",style: TextStyle(color: Colors.black,fontSize: 22.0),),

                      Text("Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th-century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh.",style: TextStyle(color: Colors.blueGrey,fontSize: 20.0,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


