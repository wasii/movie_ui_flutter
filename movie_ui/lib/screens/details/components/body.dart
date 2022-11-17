// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ui/constants.dart';
import 'package:movie_ui/screens/details/components/title_duration_and_fab_button.dart';
import 'package:movie_ui/screens/home/components/genre_card.dart';

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
        SizedBox(height: kDefaultPadding / 2),
        TitleDurationAndFabButton(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: SizedBox(
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.genra.length,
              itemBuilder: (context, index) => GenreCard(
                genres: movie.genra[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}

