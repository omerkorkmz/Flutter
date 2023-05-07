import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CheckBox Example'),
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
  Widget build(BuildContext context) {

    bool? kotlinCheck = false;
    bool? dartCheck = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: Text("Kotlin"),
              value: kotlinCheck,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri){
                print("Kotlin Durumu: $veri");

                setState(() {
                  kotlinCheck = veri;
                }); 
              },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              value: dartCheck,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? veri){
                print("Dart Durumu: $veri");

                setState(() {
                  dartCheck = veri;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
