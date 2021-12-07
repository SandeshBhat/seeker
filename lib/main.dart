import 'package:flutter/material.dart';
import 'package:seeker/screens/history.dart';
import 'package:seeker/screens/home_screen.dart';
import 'package:seeker/screens/notifications.dart';
import 'package:seeker/screens/post_ad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const cPrimaryfont = Color(0xFF1A2E35);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
    },
    child:
      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            color: cPrimaryfont,
          ),
          headline2: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w300,
            color: cPrimaryfont,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          headline4: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            letterSpacing: 0.8,
            fontFamily: "Poppins Bold",
          ),
          bodyText2: TextStyle(
              fontFamily: "Poppins", fontSize: 15),
          caption: TextStyle(
              fontFamily: "Poppins", fontSize: 12, color: Colors.black,),
        ),
      ),
        initialRoute: '/',
        routes: {
          '/PostAd': (context) => PostAd(),
          // '/nav': (context) => MyNavBar(),
        },
      home:  MyHomePage(),
    ));
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_sharp), label:"Post Ads"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notification",
        )
      ],
      onTap: _onTap,
      currentIndex: _currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState!.pushReplacementNamed("Home");
        break;
      case 1:
        _navigatorKey.currentState!.pushReplacementNamed("Post Advertisements");
        break;
      case 2:
        _navigatorKey.currentState!.pushReplacementNamed("History");
        break;
      case 3:
        _navigatorKey.currentState!.pushReplacementNamed("Notifications");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Post Advertisements":
        return MaterialPageRoute(builder: (context) => PostAd());
      case "History":
        return MaterialPageRoute(builder: (context) => History());
      case "Notifications":
        return MaterialPageRoute(builder: (context) => Notifications());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
