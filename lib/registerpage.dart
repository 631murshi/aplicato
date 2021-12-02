import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class registerpage extends StatefulWidget {
  const registerpage({Key? key}) : super(key: key);

  @override
  _registerpageState createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  TextEditingController obj_name=TextEditingController();
  TextEditingController obj_email=TextEditingController();
  TextEditingController obj_userPasswordController=TextEditingController();
  bool? _passwordVisible =true;
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
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("E2E3E4")),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Register Account",
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14,left: 20),
                    // padding: EdgeInsets.only(top: 10,left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello",style: TextStyle(
                            fontSize: 24,fontWeight: FontWeight.bold
                        ),),
                        Text("Hello thgwt hshgt jhyrshbbsh",style:
                        TextStyle(color: Colors.black38),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Name",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                      height: 40,
                      width:MediaQuery.of(context).size.width-30,
                      margin: EdgeInsets.only(top: 6,left: 20,right: 20),
                      child: Center(
                          child:TextField(
                            controller: obj_name,
                            onChanged: (val){},
                            decoration: InputDecoration(
                                border: InputBorder.none,
                               // hintText: "Password",
                               // hintStyle: TextStyle(fontSize: 16,color: Colors.black),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(left: 14,top: 14,bottom: 14),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.black26)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                                )
                            ),
                          ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Account",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                      height: 40,
                      width:MediaQuery.of(context).size.width-30,
                      margin: EdgeInsets.only(top: 6,left: 20,right: 20),
                      child: Center(
                        child:TextField(
                          controller: obj_email,
                          onChanged: (val){},
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              // hintText: "Password",
                              // hintStyle: TextStyle(fontSize: 16,color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 14,top: 14,bottom: 14),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.black26)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 20),
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
                      height: 40,
                      width:MediaQuery.of(context).size.width-30,
                      margin: EdgeInsets.only(top: 6,left: 20,right: 20),
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
                    margin: EdgeInsets.only(top: 14,left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle,size: 20,
                        color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("By changing jsklak kdksllkkf kkfsldkj kfakjkjfie jshdwdg"
                            "\n mnxjhshc jcnjhejhu ncsjhehue mncjhhf ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        textAlign: TextAlign.center,)

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
                      child: Text("Create new Account",style: TextStyle(
                          color:Colors.white,fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Container(
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
                            Text("Sign in",style: TextStyle(
                                color: HexColor("22307D"),fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        )
                      ],
                    ),
                  )
                ])));
  }
}
