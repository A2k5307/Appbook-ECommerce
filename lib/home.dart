import 'package:nwe/data.dart';
import 'package:flutter/material.dart';
import 'package:nwe/login.dart';
import 'package:nwe/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Text('App Books',
      style: TextStyle( 
        color: Color(0xFF7BA078)
      ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person,
          color: Color(0xFF7BA078),
          ),
          onPressed: () {
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginForm(),));
          },
        )
      ],
    );
    
    createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${book.title}');
              },
              child:Container(
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:  Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
              ),
              ),
            ),
          ),
        );
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBar,
      body: grid,
    );
  }
}
