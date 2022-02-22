import 'package:flutter/material.dart';

import 'entity/object_level_0.dart';
import 'entity/object_level_1.dart';

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
        primarySwatch: Colors.blue,
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
  final timer = Stopwatch();

  late ObjectLevel0? object1;
  late ObjectLevel0? object2;

  bool? result;

  void _createObjects() {
    object1 = ObjectLevel0(generateList());
    object2 = ObjectLevel0(generateList());
  }

  bool _compareTest() => object1 == object2;

  List<ObjectLevel1> generateList() => List<ObjectLevel1>.generate(
        1000,
        (index) => ObjectLevel1(
          boolVal: true,
          doubleVal: index.toDouble(),
          intVal: index,
          numVal: index,
          stringVal: index.toString(),
          boolVal2: true,
          doubleVal2: index.toDouble(),
          intVal2: index,
          numVal2: index,
          stringVal2: index.toString(),
        ),
      );

  void _incrementCounter() {
    setState(() {
      timer.reset();
      _createObjects();
      timer.start();
      result = _compareTest();
      timer.stop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          '{result: $result, time: ${timer.elapsedMicroseconds} ms }',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
