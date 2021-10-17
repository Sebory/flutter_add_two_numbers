import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Add Two Numbers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  TextEditingController num3 = new TextEditingController();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  TextEditingController num3 = new TextEditingController();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Card(
        color: Colors.blue.shade50,
        margin: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 10.0,
            ),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/avatar.jpg'),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.lightBlue.shade100,
                  width: 90,
                  child: Flexible(
                    child: TextField(
                      controller: num1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'num1'
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(2),
                      ],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                    '+',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  color: Colors.lightBlue.shade100,
                  width: 90,
                  child: Flexible(
                    child: TextField(
                      controller: num2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'num2'
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(2),
                      ],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                    '=',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  //color: Colors.lightBlue.shade100,
                  width: 90,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: Colors.lightBlue.shade100,
                  ),
                  child: Center(
                    child: Flexible(
                      child: Text(
                          result,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              int sum = int.parse(num1.text) + int.parse(num2.text);
              result = sum.toString();
            });
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
