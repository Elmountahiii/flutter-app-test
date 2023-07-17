import 'package:flutter/material.dart';
import 'package:namer_app/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class NextAppPage extends StatelessWidget {
  const NextAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provideMovies = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("your best next page"),
      ),
      body: Center(
        child: Text("we have ${provideMovies.movies.length}"),
      ),
    );
  }
}

class PageBody extends StatelessWidget {
  const PageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provideMovies = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("your best next page"),
      ),
      body: Center(
        child: Text("we have ${provideMovies.movies.length}"),
      ),
    );
  }
}
