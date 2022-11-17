//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/movie.dart';
class TitleDurationAndFabButton extends StatelessWidget {
  const TitleDurationAndFabButton({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kDefaultPadding / 4,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "2h 23min",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                backgroundColor: MaterialStateProperty.all<Color>(kSecondaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    // side: 
                  )
                )
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

