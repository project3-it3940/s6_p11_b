import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo Home Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration:const BoxDecoration(color: Colors.blue,boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]),
                    ),
                    Container(
                      width: 100,
                      height:120,
                      decoration:const BoxDecoration(color: Colors.red,boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]),
                    ),
                    Container(
                      width: 50,
                      height: 150,
                      decoration:const BoxDecoration(color: Colors.yellow,boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]),
                    )
                  ],
                )
              ]),
        ));
  }
}
