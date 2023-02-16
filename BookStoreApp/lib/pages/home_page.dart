import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:ui';
import 'package:bookstore/data/json.dart';
import 'package:bookstore/theme/colors.dart';
import 'package:bookstore/widgets/book_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          // backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.vertical_distribute_rounded,))
              ),
              Icon(Icons.search_rounded),
          ],),
        ),
        body: SingleChildScrollView(
      child: Column(
      children :[
      Container(
      child: Stack(
      clipBehavior: Clip.none,
        children: [
          Container(
            child: Container(
              width: double.infinity,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 35, right:15),
                    child: Text("Welcome", style: TextStyle(color: secondary,fontSize: 23, fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: 35,),
                  Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text("New Books", style: TextStyle(color: secondary,fontSize: 18, fontWeight: FontWeight.w600),)
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ),
          Positioned(
              top: 140,
              left: 0, right: 0,
              child: Container(
                height: 260,
                child: getPopularBooks(),
              )
          ),
        ],
      ),
    ),
    ],
    ),
    )
      );
  }


   getPopularBooks(){
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 5, left: 15),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(popularBooks.length,
                (index) => BookCard(book: popularBooks[index])
        ),
      ),
    );
  }
}