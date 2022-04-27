import 'package:dico_travel/model/travel.dart';
import 'package:dico_travel/widgets/TravelInfo.dart';
import 'package:dico_travel/widgets/most_popular.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "DICO Travel",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelInfo(),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Most popular', style: TextStyle(fontSize: 18)),
                Text('View More',
                    style: TextStyle(fontSize: 15, color: Colors.deepOrange)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          ),
        ],
      ),
    );
  }
}
