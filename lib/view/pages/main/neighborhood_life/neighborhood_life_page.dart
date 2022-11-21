import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/neighborhood_life_item.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('동네생활'),
      ),
      body: ListView.separated(
        itemCount: neighborhoodLifeList.length,
        itemBuilder: (context, index) => NeighborhoodLifeItem(
          neighborhoodLife: neighborhoodLifeList[index],
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
      ),
    );
  }
}
