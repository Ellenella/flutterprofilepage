import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'components/card.dart';
import 'components/images.dart';
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
        title: Text('My Profile', style: GoogleFonts.roboto()),
      ),
      backgroundColor: const Color(0xffF1F4F8),
      body: SafeArea(
        child: Center(child: _buildCard()),
      ),
    );
  }

  Widget _buildCard() {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 5,
        ),
        const Images(
          text: "Team 11",
          images: "assets/images/group11.jpg",
          email: "Team11@gmail.com",
          university: "Sidehustle Internship Experience",
        ),
        const SizedBox(height: 10),
        Row(children: [
          const SizedBox(width: 15),
          Text(
            "General",
            style: GoogleFonts.roboto(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        const Cards(image: Icons.person_add, text: "Edit Profile"),
        const Cards(image: Icons.badge, text: "Badges"),
        const Cards(
            image: Icons.add_circle_outline_rounded, text: "Study Goals"),
        const Cards(image: Icons.notifications_off_sharp, text: "Focus mode"),
        const Cards(image: Icons.next_plan_sharp, text: "School Schedule"),
        const Cards(image: Icons.group_sharp, text: "Invite Friends"),
      ],
    );
  }
}


