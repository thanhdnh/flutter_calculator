import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Flutter Calculator'),
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
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  String txtresult = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: txt1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Number:"
              ),
            ),
            TextField(
              controller: txt2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Second Number:",
              ),
            ),
            ElevatedButton(onPressed: on_press, child: const Text("Add")),
            Text(txtresult)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void on_press() {
    setState(() {
      double num1 = double.parse(txt1.text);
      double num2 = double.parse(txt2.text);
      double result = num1 + num2;
      txtresult = result.toString();
    });
  }
}
