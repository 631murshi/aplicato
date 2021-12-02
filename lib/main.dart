import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myfirstproject/registerpage.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Homepage() ,
    title: 'splash_screen',
    theme: ThemeData(primarySwatch: Colors.blue));
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  initState(){
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                loginpage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: HexColor("22307D"),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.home,color: Colors.white,
            size: 40,),
            Text("HOMER",style: TextStyle(
              color: Colors.white,fontSize: 20
            ),)
          ],
        )
      ),);
  }
}
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController obj_email = TextEditingController();
  TextEditingController obj_password = TextEditingController();
  TextEditingController obj_userPasswordController=TextEditingController();
  TextEditingController obj_useremailcontroller=TextEditingController();
  bool? _passwordVisible= true;
  bool? _emailwordVisible= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: HexColor("F9F9F9"),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.2 ,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 20),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor("E2E3E4")
              ) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sign in",style: TextStyle(
                    fontSize: 24
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
             // padding: EdgeInsets.only(top: 10,left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome back!",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                  ),),
                  Text("Hello there,Login to starting",style:
                    TextStyle(color: Colors.black38),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 44,
                        width: 210,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                             //FaIcon(FontAwesomeIcons.home, size: 20,),
                            SizedBox(width: 10,),
                            Text("Google",style: TextStyle(
                              color: Colors.black87,fontSize: 18
                            ),)
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Container(
                        height: 44,
                        width: 210,
                        decoration: BoxDecoration(
                            color: HexColor("273A96"),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black45, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook),
                            //FaIcon(FontAwesomeIcons.home, size: 20,),
                            SizedBox(width: 10,),
                            Text("facebook",style: TextStyle(
                                color: Colors.white,fontSize: 18
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("viuihoijkokokllplplp",style: TextStyle(
                          fontSize: 14,color: Colors.black38
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6,left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),
            Container(
                height: 50,
                width:MediaQuery.of(context).size.width-30,
                margin: EdgeInsets.only(top: 2,left: 20,right: 20),
                child: Center(
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    controller: obj_useremailcontroller,
                    obscureText: _emailwordVisible!,//This will obscure text dynamically
                    decoration: InputDecoration(focusedBorder:
                    new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.black,width: 1),
                    ) ,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _emailwordVisible!
                              ? Icons.check_circle
                              : Icons.check_circle,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          setState(() {
                            _emailwordVisible = !_emailwordVisible!;
                          });
                        },
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      )
                    ),
                  )
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 6,left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password",style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),
            Container(
                height: 50,
                width:MediaQuery.of(context).size.width-30,
                margin: EdgeInsets.only(top: 2,left: 20,right: 20),
                child: Center(
                    child:TextFormField(
                      keyboardType: TextInputType.text,
                      controller: obj_userPasswordController,
                      obscureText:  _passwordVisible!,//This will obscure text dynamically
                      decoration: InputDecoration(focusedBorder:
                      new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(color: Colors.black,width: 1),
                      ) ,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible!
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible!;
                              });
                            },
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )
                      ),
                    )
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 6,right: 20),
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Forgot Password?",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12,
                    color: HexColor("22307D")
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left:20,right: 20 ),
              //padding: EdgeInsets.only(top: 20),
              height: 50,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: HexColor("22307D"),
                borderRadius: BorderRadius.circular(30),
                // border: Border.all(color: Colors.red, width: 2),
              ),
              child: Center(
                child: Text("Login Account",style: TextStyle(
                    color:Colors.white,fontSize: 14,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:
                (context)=>registerpage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("sjbchbbnjdhfhefuj",style: TextStyle(
                          color: Colors.black45,fontSize: 12
                        ),),
                        SizedBox(width: 2,),
                        Text("Sign up",style: TextStyle(
                          color: HexColor("22307D"),fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
