// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_ui/screens/details/components/body.dart';
import '../../model/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}