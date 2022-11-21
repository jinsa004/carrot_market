import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeDetail extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const NeighborhoodLifeDetail(this.neighborhoodLife, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 8.0,
              ),
              Align(alignment: AlignmentDirectional.centerStart, child: Text("${neighborhoodLife.content}", style: TextStyle(color: Colors.black))),
              _buildCachedNetworkImage()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCachedNetworkImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != "",
      child: CachedNetworkImage(
        width: double.infinity,
        imageUrl: neighborhoodLife.contentImgUri,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
    );
  }
}
