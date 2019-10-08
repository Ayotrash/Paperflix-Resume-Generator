import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './register_view_model.dart';

class RegisterView extends RegisterViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Color(0xFFFAFAFA),
            title: Text(
              "Register",
            ),
          )
        ];
      },
      body: Container(
        width: screenSize.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Stack(
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: Color(0xFFf1f2f6),
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: widget.gender == 0
                          ? Image.asset("assets/girl.png")
                          : Image.asset("assets/boy.png"),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF747d8c),
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 8),
                      child: Text(
                        "Firstname",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf1f2f6),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                          controller: firstnameController,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFced6e0),
                            hintText: "ex. John",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9D9D9D),
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                      child: Text(
                        "Lastname",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf1f2f6),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                          controller: lastnameController,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFced6e0),
                            hintText: "ex. Doe",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9D9D9D),
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf1f2f6),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFced6e0),
                            hintText: "ex. johndoe@gmail.com",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9D9D9D),
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf1f2f6),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFced6e0),
                            hintText: "************",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9D9D9D),
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, bottom: 8),
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf1f2f6),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFced6e0),
                            hintText: "************",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9D9D9D),
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: Color(0xFF2f3542),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: terms,
                      onChanged: (bool value) {
                        setState(() {
                          terms = value;
                        });
                      },
                    ),
                    Flexible(
                        child: RichText(
                      text: new TextSpan(
                        text: 'With register, you agree with our',
                        style:
                            TextStyle(fontSize: 13.3, color: Color(0xFF2f3542)),
                        children: <TextSpan>[
                          new TextSpan(
                              text: ' terms & conditions',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: '.'),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screenSize.width - 100,
                margin: EdgeInsets.only(bottom: 15),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () => Navigator.pushNamed(context, '/Home'),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  color: Color(0xFF2ed573),
                  textColor: Colors.white,
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    )));
  }
}