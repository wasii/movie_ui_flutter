// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:movie_ui/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: kDefaultPadding,
      ),
      width: 80,
      child: Column(children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                cast['image'],
              ),
            ),
          ),
        ),
        
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          cast['orginalName'],
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
          maxLines: 2,
        ),
        SizedBox(
          height: kDefaultPadding / 4,
        ),
        Text(
          cast['movieName'],
          textAlign: TextAlign.center,
          style: TextStyle(color: kTextLightColor),
          maxLines: 2,
        ),
      ]),
    );
  }
}
