import 'package:flutter/material.dart';
import 'package:movie_apps/components/movie_card.dart';
import 'package:movie_apps/models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key,required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Details of Movie'),
      ),
      body:Container(
        child: Column(
          children: [
            Row(children: [Container(margin: EdgeInsets.all(10),height: 160,width: 120,decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(movie.images[0])))),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  SizedBox(height: 20,),
                  Text(movie.title,style:Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 20)),Text('Director: ${movie.director}',style: Theme.of(context).textTheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold),), RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: 'Released:',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '${movie.released}\n',style: Theme.of(context).textTheme.labelLarge
                            ?.copyWith(fontWeight: FontWeight.bold),),
                        TextSpan(text: 'Plot:',style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold), ),
                        TextSpan(text: '${movie.plot}',style: Theme.of(context).textTheme.labelLarge
                            ?.copyWith(),),
                      ],
                    ),
                  ),
                ],),
              )

            ],),
           Divider(),
           Text("Movie Posters",style:Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 20),),
            Divider(),

           SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(itemCount: movie.images.length,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0,
                  child: Image.network(movie.images[index],fit: BoxFit.cover,),
                );
              },),
            )
            // isDetails ? const Text(" ") : TextButton(onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetails(movie: movie),));

            // }, child: Text('Read More'))
          ],
        ),
        // Column(
        //   children: [MovieCard(movie: movie, isDetails: true,),Text('Movie Posters',style: Theme.of(context).textTheme.headlineSmall,),

        //   ],
        // ),
        
      ),
    );
  }
}
