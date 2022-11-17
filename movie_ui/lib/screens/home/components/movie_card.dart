// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ui/screens/details/detail_screen.dart';

import '../../../constants.dart';
import '../../../model/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        openElevation: 0,
        closedElevation: 0,
        closedBuilder: (context, index) => buildMovieCard(context), 
        openBuilder: (context, index) => DetailScreen(movie: movie),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movie.poster)
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              movie.title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 20,
              ),
              SizedBox(width: kDefaultPadding / 2,),
              Text(
                "${movie.rating}",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        ],
      );
  }
}