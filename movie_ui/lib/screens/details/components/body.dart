// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movie_ui/constants.dart';
import 'package:movie_ui/screens/details/components/movie_genre.dart';
import 'package:movie_ui/screens/details/components/plot_summary.dart';
import 'package:movie_ui/screens/details/components/title_duration_and_fab_button.dart';

import '../../../model/movie.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabButton(movie: movie),
          Genre(movie: movie),
          PlotSummary(plotSummary: movie.plot),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}





