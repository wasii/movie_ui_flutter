// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ui/constants.dart';

import '../../../model/movie.dart';
import 'backdrop_rating.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        BackdropAndRating(size: size, movie: movie),
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Row(children: [
              Expanded(
                child: Column(
                  children: [],
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
                        borderRadius: BorderRadius.circular(18),
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
        ),
      ],
    );
  }
}

