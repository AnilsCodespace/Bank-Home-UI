import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TheBank(),
    debugShowCheckedModeBanner: false,
    title: "SBI Connect",
    theme: ThemeData(primarySwatch: Colors.brown),
  ));
}

class TheBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome SBI"),
          centerTitle: true,
          actions: [Icon(Icons.qr_code_scanner_outlined)],
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4.5,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 10,
                    )),
                    Positioned(
                        top: 20,
                        left: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: MediaQuery.of(context).size.height / 5,
                          child: Card(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      widthFactor: 2,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images (2).jfif"),
                                        maxRadius: 50,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 35),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ANJALI MOHANDAS",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(
                                        height: 2,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              style: TextStyle(
                                                  color: Colors.brown,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                              text: "INR. 2560000.00 ",
                                            ),
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.hide_source,
                                                size: 18,
                                                color: Colors.lightBlueAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "5532485847532875",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "    .",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.local_activity, color: Colors.brown, size: 30),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "WOULD YOU LIKE TO ?",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              GridView.count(shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  Container(width: 30,height: 30,
                    child: Card(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center ,
                        children: [Icon(Icons.,size: 100,color: Colors.brown,),Text("My Account")],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
