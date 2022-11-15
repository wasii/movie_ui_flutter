// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ui/constants.dart';

import '../../../model/movie.dart';
class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage(movie.backdrop),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //Rating Box
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 50,
                    color: Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SvgPicture.asset("assets/icons/star_fill.svg"),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "${movie.rating}/",
                            style:  TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(text: "10\n"),
                            TextSpan(
                              text: "150,212",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
                //Rate This
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SvgPicture.asset("assets/icons/star.svg"),
                  SizedBox(height: kDefaultPadding / 4,),
                      Text(
                        "Rate This",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  //Metascore
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "${movie.metascoreRating}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 4,),
                      Text(
                        "Metascore",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "62 critic reviews",
                        style: TextStyle(
                          color: kTextLightColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}