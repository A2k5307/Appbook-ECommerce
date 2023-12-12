import 'package:nwe/login.dart';

import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail(this.book);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Text('App Books',
      style: TextStyle(
        color: Color(0xFF7BA078),
      ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person,
          color: Color(0xFF7BA078),
          ),
          onPressed: () {},
        )
      ],
    );

    ///detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', color: Color(0xFF7BA078), size: 12)
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title,
        color: Color(0xFF7BA078),
            size:22, isBold: true, padding: EdgeInsets.only(top: 16.0)),
        text(
          'by ${book.writer}',
          color: Color(0xFF7BA078),
          size: 12,
          padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),
        Row(
          children: <Widget>[
            text(
              book.price,
              color: Color(0xFF7BA078),
              isBold: true,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: book.rating ,color: Color(0xFF7BA078),)
          ],
        ),
        SizedBox(height: 32.0),
        Container(
          height: 40,
          width: 150,
          child: ElevatedButton(onPressed: (){
            
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginForm()),);
          }, child: Text("Buy It Now",
          style: TextStyle(
            color: Colors.white
          ),
          
          ),
          style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF7BA078))
          ),
          )
        )
      ],
    );

    final topContent = Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 13.0, height: 1.5,
          color: Color(0xFF7BA078)
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
