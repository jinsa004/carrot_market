import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/components/neighborhood_life_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeItem extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const NeighborhoodLifeItem({required this.neighborhoodLife, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Container(color: Colors.grey[200], child: Text("${neighborhoodLife.category}")),
                ),
                Text("${neighborhoodLife.date}"),
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: neighborhoodLife.profileImgUri,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                ),
                Text(
                  "${neighborhoodLife.userName}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                ),
                SizedBox(width: 4.0),
                Text("작동 인증${neighborhoodLife.authCount}회", style: TextStyle(fontSize: 11)),
              ],
            ),
            NeighborhoodLifeDetail(neighborhoodLife),
            Divider(color: Colors.grey),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(CupertinoIcons.smiley),
                  Text("공감하기"),
                  Icon(CupertinoIcons.chat_bubble_2),
                  Text("댓글쓰기"),
                  Text("${neighborhoodLife.commentCount}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
