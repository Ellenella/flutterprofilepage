import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
      ),
      backgroundColor: const Color(0xffF1F4F8),
      body:
          
          SafeArea(
            child: Center(
                child: _buildCard()
            ),
          ),
    );
  }

  Widget _buildCard() {
    return
        ListView(
          children: const <Widget>[
            SizedBox(height: 5,),
            Images(text: "Team 11", images: "assets/images/group11.jpg", email: "Team11@gmail.com",university: "Sidehustle Internship Experience",),
            SizedBox(height: 10),
            Text("General",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Cards(image: Icons.person_add,text: "Edit Profile"),
            Cards(image: Icons.badge,text: "Badges"),
            Cards( image: Icons.add_circle_outline_rounded,text: "Study Goals"),
            Cards(image: Icons.notifications_off_sharp,text: "Focus mode"),
            Cards(image: Icons.next_plan_sharp,text: "School Schedule"),
            Cards(image: Icons.group_sharp,text: "Invite Friends"),
          ],
        );
  }

}

class Cards extends StatelessWidget {
  final String text;
  final IconData image;
  final String? subtitle;
  final bool isIcon = false;
  const Cards({Key? key,required this.text,required this.image,this.subtitle}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 4),
            leading: Icon(image,color: Colors.blue),
            title: Text(text,style: const TextStyle(fontSize: 20),),
            trailing: const Icon(Icons.arrow_forward_ios_rounded ,color: Colors.blue,),
        ),
      );
  }
}

class Images extends StatelessWidget {
  final String text;
  final String images;
  final String email;
  final String university;


  const Images({Key? key,required this.text,required this.images,required this.email,required this.university}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

        height: 95,
        child: Padding(
          padding:
          const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: Image.asset(images),
              ),

              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kiteOne(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    email,
                    style: GoogleFonts.kiteOne(fontSize: 15),
                  ),
                  Text(
                    university,
                    style: GoogleFonts.kiteOne(fontSize: 15),
                  ),
                ],
              ),

            ],
          ),
        ),
        decoration: const BoxDecoration(
          //color: Colors.green,
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),

          ],

        ),

      );
  }
}



