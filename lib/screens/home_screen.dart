import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seeker/widgets/jobs_card.dart';
import 'package:seeker/widgets/jobs_near.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String wishText = "Hello";
  greetingMessage() {
    var timeNow = DateTime.now().hour;
    if (timeNow < 12) {
      wishText = 'Good Morning';
    } else if ((timeNow >= 12) && (timeNow <= 16)) {
      wishText = 'Good Afternoon';
    } else {
      wishText = 'Good Evening';
    }
  }
  initApp() async {
    greetingMessage();
  }

  List<JobsCard> popular = [
    const JobsCard(),
    const JobsCard(),
    const JobsCard(),
    const JobsCard(),
  ];
  final jobList = [
    const JobsCard(),
    const JobsCard(),
    const JobsCard(),
    const JobsCard(),
  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    greetingMessage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            padding:  const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          wishText + " Pankaj,",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "Find Your",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          "Dream Job.",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                     const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintText: 'Search for a job..',
                          prefixIcon: Image.asset(
                            'assets/search.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/tune.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Jobs",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    TextButton(
                      child: Text("Show All",
                      style: Theme.of(context).textTheme.headline4,), onPressed: () {  },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListView.builder(
                    itemCount: jobList.length,
                    scrollDirection: Axis.horizontal,
                    // physics: const BouncingScrollPhysics(
                    //   parent: BouncingScrollPhysics(),
                    // ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '');
                          },
                          child: jobList[index]);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: const TextSpan(
                      text: 'Jobs',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Near You.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: const [
                      JobsNear(),
                      JobsNear(),
                      JobsNear(),
                      JobsNear(),
                      JobsNear(),
                      JobsNear(),
                    ],
                  ),
                ),
                // JobsNear(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
