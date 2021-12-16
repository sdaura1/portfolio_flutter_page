import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 80,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(left: 64),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text('Shahid',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  SizedBox(width: 100,),
                  SizedBox(
                    width: 500,
                    child: Expanded(
                      flex: 1,
                      child: DefaultTabController(
                        initialIndex: 0,
                        length: 5,
                        child: TabBar(
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.lightBlueAccent,
                            unselectedLabelColor: Colors.grey,
                            labelColor: Colors.black,
                            tabs: [
                              Tab(text:'Home'),
                              Tab(text: 'About'),
                              Tab(text: 'Skills'),
                              Tab(text: 'Works'),
                              Tab(text: 'Contact'),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.black12,
              endIndent: 8,
              indent: 8,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              margin: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Hi, I'm Shahid mobile developer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 60,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("A passionate mobile developer, to build user friendly "
                            "and efficient mobile application using native android platform (Kotlin/XML),"
                            " Flutter(dart), coordinating cross-functional teams and easily communicating"
                            " complex technical details to non-technical stakeholders.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Image(
                    image: AssetImage('images/shahid.jpg'),
                    width: 600,
                    height: 600,
                  )
                ],
              ),
            ),
            const Center(
              child: Text(
                'SOME OF THE THINGS I KNOW',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              color: Colors.black12,
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  FaIcon(FontAwesomeIcons.gitAlt, size: 60, color: Colors.black,),
                  FaIcon(FontAwesomeIcons.java, size: 60, color: Colors.black),
                  FaIcon(FontAwesomeIcons.android, size: 60, color: Colors.black),
                  FaIcon(FontAwesomeIcons.trello, size: 60, color: Colors.black),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
