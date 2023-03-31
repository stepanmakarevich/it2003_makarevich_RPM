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
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Инкремент'),
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
  int _counter = 0;

  void _incrementCounterUp() {
    setState(() {
      
      _counter++;
    });
  }
  void _incrementCounterDown() {
    setState(() {
      
      _counter--;
    });
  }
  void _incrementCounterReset() {
    setState(() {
      
      _counter=0;
    });
  }

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
            const Text(
              'Значение инкремента',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Wrap(
            

          children: <Widget>[
          ElevatedButton(onPressed: _incrementCounterUp, 
          child: Text("+1"),
           style: ElevatedButton.styleFrom(primary: Colors.green)),
           
          ElevatedButton(onPressed: _incrementCounterDown,
           child: Text("-1"), 
           style: ElevatedButton.styleFrom(primary: Colors.red)),

           
          ]
           ),

           Wrap(
            children: [TextButton(onPressed: _incrementCounterReset,
           child: Text("Сбросить"),
           style: TextButton.styleFrom(primary: Colors.grey),)],
           )
          
           
           ]
          
        ),
        
        
      ),
      
      
    );
  }
}
