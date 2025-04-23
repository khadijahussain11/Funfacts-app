import 'package:flutter/material.dart';

void main()
{
  runApp(FunFactsApp());
}
class FunFactsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fun Facts About Me',
      home: FunFactsHome(),
    );
  }
}

class FunFactsHome extends StatefulWidget{
  @override
  State<FunFactsHome> createState() => _FunFactsHomeState();

}
class _FunFactsHomeState extends State<FunFactsHome>{
  int _counter=0;
  String _fact = "Tap the button to reveal a fun fact";
  final List<String> _facts = [
    "I love white roses.",
  "I like travelling.",
  "I am an introvert.",
  "My nickname is Deeja ^.^",
    "I love ice creams."
  ];
  void _showFact(){
    setState((){
      _fact = _facts[_counter % _facts.length];
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fun Facts About Me!"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
            ),
            SizedBox(height: 20),
            Text("Hi, I am Deeja.",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
                _fact,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
                ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _showFact,
                child: Text("Show Fun Fact"),
            )
          ],
        ),
        ),
      )

    );
  }

}


