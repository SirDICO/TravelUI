import 'dart:developer';

import 'package:dico_travel/detail.dart';
import 'package:dico_travel/model/travel.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  MostPopular({Key? key}) : super(key: key);
  final _list = Travel.generateMostPopularInfo();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(
                  travel: travel,
                );
              }));
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travel.url,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            travel.location,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 8),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            travel.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(
              width: 15,
            ),
        itemCount: _list.length);
  }
}
