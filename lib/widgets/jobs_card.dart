import 'package:flutter/material.dart';

class JobsCard extends StatelessWidget {
  final double? height;

  const JobsCard({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, top: 20.0, right: 6.0, bottom: 20.0),
      child: Container(
        height: 170,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.grey,
          //     blurRadius: 5.0,
          //   ),
          // ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Interior Carpet Designer",
                    style: Theme.of(context).textTheme.headline3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.black)),
                      onPressed: () {},
                      padding: const EdgeInsets.all(10.0),
                      textColor: Colors.black,
                      child: const Text("Full Time",
                          style: TextStyle(fontSize: 11)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Salary upto ₹15000 / month",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: 11),
                    ),

                    IconButton(
                      color: Colors.lightBlue.shade200,
                      onPressed: (){

                    },icon: Icon(Icons.bookmark),),

                  ],
                ),
                // SizedBox(
                //   height: 6,
                // ),
                const Text(
                  "2+ Years Experience",
                ),
                const SizedBox(
                    height: 6,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text:  TextSpan(
                          text: 'Badonia & Sons\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline3,
                          children: const <TextSpan>[
                            TextSpan(text: 'Civil lines, Sagar',
                          style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300,
                            ),),
                          ]
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/PostAd');
                    }, child: const Text("Apply Now"))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
