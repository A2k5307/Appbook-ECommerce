import 'package:nwe/data.dart';
import 'package:nwe/detail.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        platform: TargetPlatform.iOS,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => Home(),
      },
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
  generateRoute(RouteSettings settings) {
    final path = (settings.name ?? '').split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(
        top: 200,
      ),
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage("res/appbook.gif")),
              ),
              Text("App Book",
              style: TextStyle(
                color: Color(0xFF7BA078),
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
              )
            ],
          ),
        );
  }
}
