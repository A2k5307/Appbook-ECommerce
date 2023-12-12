import 'package:flutter/material.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Text('App Books',
      style: TextStyle(
        color: Color(0xFF7BA078),
        shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
      Shadow(
        color: Colors.black,
        blurRadius: 9.0,    
        // offset: Offset(1.0, 1.0), 
      ),
    ],
      ),
      ),
    );

    final topContent = Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        ],
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body:
      Column(
        children: [
        Container(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
               Container(
          width: double.infinity,
          height: 300,
          child: Image(image: AssetImage("res/library.jpg",),
            fit: BoxFit.cover,
            ), 
          ),
               Positioned(
                top: 230,
                 child: Container(
                    width: 130,
                    height: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(image: AssetImage("res/user.jpg")),
                      ),
                      ),
               ),
          ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 70,
          ),
          child: Column(
            children: [
              Text("Aliyan Ahmed",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF7BA078),
                fontWeight: FontWeight.bold,
              ),),
              Text("Member since : May 10th 2023",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[600],
              ),),
              Container(
                padding: EdgeInsets.all(15),
                child: 
                Row(
                  children: [
                    ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,height: 80,color: Colors.grey[300],
                    child: Column(
                      children: [
                        Icon(Icons.mail,color: Color(0xFF7BA078),size: 30,),
                        Text("aliyanahmed853@gmail.com",style: TextStyle(color: Color(0xFF7BA078),fontSize: 12),)
                      ],
                    ),
                  )
              ),
              SizedBox(width: 10,),
                    ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,height: 80,color: Colors.grey[300],
                    child: Column(
                      children: [
                        Icon(Icons.phone,color: Color(0xFF7BA078),size: 30,),
                        SizedBox(height: 5,),
                        Text("0332 1234542",style: TextStyle(color: Color(0xFF7BA078),fontSize: 12),)
                      ],
                    ),
                  )
              ),
              SizedBox(width: 10,),
                    ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,height: 80,color: Colors.grey[300],
                    child: Column(
                      children: [
                        Icon(Icons.location_on_sharp,color: Color(0xFF7BA078),size: 30,),
                        Text("Pakistan, Sindh, Karachi",style: TextStyle(color: Color(0xFF7BA078),fontSize: 12),)
                      ],
                    ),
                  )
              ),
              // SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 100,
                ),
                child: 
                Row(
                  children: [
                    ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,height: 80,color: Colors.grey[300],
                    child: Column(
                      children: [
                        Icon(Icons.book,color: Color(0xFF7BA078),size: 30,),
                        SizedBox(height: 5,),
                        Text("328",style: TextStyle(color: Color(0xFF7BA078),fontSize: 12),)
                      ],
                    ),
                  )
              ),
              SizedBox(width: 10,),
                    ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 150,height: 80,color: Colors.grey[300],
                    child: Column(
                      children: [
                        Icon(Icons.collections_bookmark,color: Color(0xFF7BA078),size: 30,),
                        SizedBox(height: 5,),
                        Text("1065",style: TextStyle(color: Color(0xFF7BA078),fontSize: 12),)
                      ],
                    ),
                  )
              ),
                  ],
                ),
              )
            ],
          ),
        )
        ],
      ),
      
      );
  }
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
