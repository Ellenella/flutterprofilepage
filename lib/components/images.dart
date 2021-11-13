import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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
                    style: GoogleFonts.ubuntu(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    email,
                    style: GoogleFonts.ubuntu(),
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
            Radius.circular(10.0),
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