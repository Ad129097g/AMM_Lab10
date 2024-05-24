import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eventos Deportivos'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              EventCard(
                eventName: 'Atletismo',
                location: 'Lugar Lima - Peru',
                dateTime: '01 de mayo - 15:00',
                imageAssetPath: 'assets/deportivo1.jpg',
              ),
              EventCard(
                eventName: 'Futbol femeino',
                location: 'Lima -Peru',
                dateTime: '05 de mayo - 10:00',
                imageAssetPath: 'assets/deportivo2.jpg',
              ),
              EventCard(
                eventName: 'Partio de futbol',
                location: 'Lima Peru',
                dateTime: '6 de junio - 04:00pm',
                imageAssetPath: 'assets/deportivo3.jpeg',
              ),
              EventCard(
                eventName: 'Maratón ',
                location: 'Lima Peru',
                dateTime: '6 de septiembre - 08:00',
                imageAssetPath: 'assets/deportivo4.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String location;
  final String dateTime;
  final String imageAssetPath;

  EventCard({
    required this.eventName,
    required this.location,
    required this.dateTime,
    required this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imageAssetPath,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  dateTime,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
