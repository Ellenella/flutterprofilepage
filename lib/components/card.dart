import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

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
          elevation: 2,
          child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 2),
            leading: Icon(image,color: Colors.blue),
            title: Text(text,style: GoogleFonts.ubuntu(),),
            trailing: const Icon(Icons.arrow_forward_ios_rounded ,color: Colors.blue,),
        ),
      );
  }
}