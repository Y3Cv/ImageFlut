import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List massages = [
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors1.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors2.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors3.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors4.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors5.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors6.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors7.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors8.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors9.png',
    'https://static.javatpoint.com/top10-technologies/images/top-10-hollywood-actors10.png',
  ];

  final List Rimlin = [
    'Dwayne Johnson',
    'Vin Diesel',
    'Tom Cruise',
    'Johnny Depp',
    'Robert Downey Jr',
    'Leonardo Dicaprio',
    'Henry Cavill',
    'Chris Hemsworth',
    'Chris Evans',
    'Hugh Jackman',
  ];

  @override

  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: massages.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Image(image: NetworkImage('${massages[index]}')
            ),
            Text('${Rimlin[index]}', style: TextStyle(color: Colors.white, fontSize: 20),)
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}