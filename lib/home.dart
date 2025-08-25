import 'package:flutter/material.dart';
import 'package:movie_apps/providers/movie_provider.dart';
import 'package:movie_apps/utils/movie_parser.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).loadMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // MovieParser.parse("hello");
    final movies = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: Center(
        child: ListView.builder(itemCount: movies.movieList.length,itemBuilder: (context, index) {
          final movie = movies.movieList[index];
          return ListTile(
            title: Text(movie.title),
            subtitle: Text('sub'),
            trailing: Icon(Icons.arrow_circle_right),
            leading: CircleAvatar(foregroundImage: NetworkImage(movie.images[0]),
            ),
              // child: Image.network(fit: BoxFit.cover,movie.images[0]),
            // ),
            
          );
          //   Card(
          //     child: Center(
          //       child: Text(movies[index]),
          //     )
          // );
          
        },)
      ),
    );
  }
}
