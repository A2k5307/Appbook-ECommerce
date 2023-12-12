import 'package:nwe/home.dart';
import 'package:nwe/login.dart';
import 'package:nwe/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerForm extends StatefulWidget {
  const registerForm({super.key});

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text("App book",
        style: TextStyle(
          color: Color(0xFF7BA078),
          fontWeight: FontWeight.bold
        ),
        
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.person_alt,
            color: Color(0xFF7BA078),
            )),
          )
        ],
    ),
      body: Column(
         children: [
        SizedBox(
          height: 30,
        ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
              children: [
                 Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.only(left: 10),
                  width: 230,
              child: ElevatedButton(
                
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[500])
                ),
                onPressed: ()
                {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginForm(),));
                }, 
                child: Text("Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                )),
             ),
             SizedBox(
              width: 20,
             ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 10),
                  width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF7BA078))
                ),
                onPressed: ()
                {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => registerForm
                  (),));
                  
                }, 
                child: Text("Register",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),
                )),
             ),
              ],
             ),
           ),
           SizedBox(
            height: 20,
           ),
           Container(
              child: Text("Welcome Aboard",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color:Color(0xFF7BA078)
              ),
              ),
             ),
             SizedBox(
              height: 10,
             ),
             Container(
              height: 45,
              padding: EdgeInsets.only(
                left: 10,
                right: 10
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                  label: Text("Enter Your Full Name",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ),
              ),
             ),
             SizedBox(
              height: 10,
             ),
             Container(
              height: 45,
              padding: EdgeInsets.only(
                left: 10,
                right: 10
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                  label: Text("Enter Your Email",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ),
              ),
             ),
             SizedBox(
              height: 10,
             ),
             Container(
              height: 45,
              padding: EdgeInsets.only(
                left: 10,
                right: 10
              ),
              child: TextFormField(
                decoration:  InputDecoration(
                  label: Text("Enter Your Contact",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ),
              ),
             ),
             SizedBox(
              height: 15,
             ),
              Container(
              height: 45,
              padding: EdgeInsets.only(
                left: 10,
                right: 10
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Enter Your Password",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ),
              ),
             ),
             SizedBox(
              height: 10,
             ),
              Container(
                  width: 200,
                  height: 50,
              child: ElevatedButton(
                 style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF7BA078))
                ),
                onPressed: (){
                  
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()),);
                }, 
                child: Text("Sign Up",
                style: TextStyle(
                  fontSize: 15,
                ),
                )),
             ),
             SizedBox(
              height: 5,
             ),
             Container(
              child: Text("___________________________________________________",
              style: TextStyle(
                color: Colors.grey[600],
              ),
              
              ),
             ),
             SizedBox(
              height: 20,
             ),
             Container(
                  width: 200,
                  height: 50,
              child: ElevatedButton(
                 style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[500])
                ),
                onPressed: (){}, 
                child: Text("Login With Google",
                style: TextStyle(
                  fontSize: 15,
                ),
                )),
             ),
         ],
           ),
      );
  }
}