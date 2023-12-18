import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class Post extends StatelessWidget {
  final String judul;
  final String category;
  final String img;
  final String minute;
  final String difficulty;
  final String author;
  final String authorpict;

  const Post(
      {super.key,
      required this.judul,
      required this.category,
      required this.img,
      required this.minute,
      required this.difficulty,
      required this.author,
      required this.authorpict,});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FillImageCard(
            width: 200,
            height: 154,
            imageProvider: AssetImage('$img'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$judul",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "$category",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$minute",
                          style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$difficulty",
                          style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(

                      children: [
                        
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                                "$authorpict",
                                height: 20,
                              ) ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$author",
                          style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
