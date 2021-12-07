import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Completed extends StatelessWidget {
  final double? height;
  const Completed({Key? key, this.height,}) : super(key: key);

  static const cPrimaryfont = Color(0xFF1A2E35);
  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Manager",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,),),
            Text("\$10-100/month",
                style: TextStyle(
                  color: Colors.black,)),
            Text("Completed",
                style: TextStyle(
                  color: Colors.black,)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            RichText(
              text:  const TextSpan(
                  text: 'Badonia & Sons\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Civil lines, Sagar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: cPrimaryfont,
                ),
                onPressed: () {}, child: const Text("Full Time",)
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 0,
              itemSize: 15,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: cPrimaryfont,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ],
    );
  }
}