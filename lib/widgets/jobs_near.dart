import 'package:flutter/material.dart';

class JobsNear extends StatelessWidget {
  final double? height;

  const JobsNear({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Badonia & Sons\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
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
                      const SizedBox(
                        width: 70,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Apply Now"))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
