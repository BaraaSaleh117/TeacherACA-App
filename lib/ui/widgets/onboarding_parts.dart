import 'package:flutter/material.dart';

class OnBoardingParts extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  OnBoardingParts({required this.title,required this.subtitle ,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 30),
      margin: const EdgeInsets.only(bottom: 30 , left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/images/$image",fit: BoxFit.fill,),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              "$title",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                // fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
