import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  List<PageViewModel> pages = [
    PageViewModel(
      title: 'This is First page',
      body: 'MMS',
      image: Image.network(
          'https://cdn.dribbble.com/users/1461762/screenshots/3826770/missing_summer.png'),
    ),
    PageViewModel(
      title: 'This is Second page',
      body: 'MMS',
      image: Image.network(
          'https://cdn.dribbble.com/users/1461762/screenshots/3826770/missing_summer.png'),
    ),
    PageViewModel(
      title: 'This is Third page',
      body: 'MMS',
      image: Image.network(
          'https://cdn.dribbble.com/users/1461762/screenshots/3826770/missing_summer.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: const Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        onDone: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => MyHomePage()));
        },
        pages: pages,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
