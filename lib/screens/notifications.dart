import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                      text: 'Your\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Notifications.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Today",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: const Divider(
                                color: Colors.grey,
                                height: 60,
                                thickness: 1,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text:  TextSpan(
                                text: 'Your request for',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Manager',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text: ' at',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption,
                                  ),
                                  TextSpan(
                                    text: ' Badonia & sons',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text:
                                        ' has been shortlisted. Please contact',
                                      style: Theme.of(context)
                                      .textTheme
                                      .caption,
                                  ),
                                  TextSpan(
                                    text: ' 9074770963',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text: ' for further information.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption,
                                  ),
                                ]),
                          ),
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                              child: const Text("View"),
                            ),
                            RichText(
                              text: const TextSpan(
                                  text: '9',
                                  style: TextStyle(
                                    color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w700,),
                                  children: <TextSpan>[
                                    TextSpan(text: ' min ago',
                                      style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400,
                                      ),),
                                  ]
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Older",
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                    ),),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: const Divider(
                                color: Colors.grey,
                                height: 60,
                                thickness: 1,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text:  TextSpan(
                                text: 'Your request for',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Manager',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text: ' at',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption,
                                  ),
                                  TextSpan(
                                    text: ' Badonia & sons',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text:
                                    ' has been shortlisted. Please contact',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption,
                                  ),
                                  TextSpan(
                                    text: ' 9074770963',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4,
                                  ),
                                  TextSpan(
                                    text: ' for further information.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption,),
                                ]),
                          ),
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                              child: const Text("View"),
                            ),
                            const Text("Yesterday",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),)
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
