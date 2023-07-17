import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/models/movie_model.dart';
import 'package:namer_app/pages/nex_page.dart';
import 'package:namer_app/providers/movies_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoviesProvider(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provideMovies = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        title: Text("my app"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("we have ${provideMovies.movies.length} movie"),
          ),
          ElevatedButton(
              onPressed: () {
                provideMovies.addNewMovie(
                    Movie(title: "does not matter", duration: "15"));
              },
              child: Text("add new movie")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextAppPage()));
              },
              child: Text("Navigate to next page"))
        ],
      ),
    );
  }
}
