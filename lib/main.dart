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
          title: const Text("Welcome SBI"),
          centerTitle: true,
          actions: const [Icon(Icons.qr_code_scanner_outlined)],
          leading: const Icon(Icons.menu),
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
                                  children: const [
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
                                  margin: const EdgeInsets.only(top: 35),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "ANJALI MOHANDAS",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Divider(
                                        height: 2,
                                      ),
                                      RichText(
                                        text: const TextSpan(
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
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      const Text(
                                        "5532485847532875",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 40),
                                        child: Icon(
                                          Icons.adjust,
                                          size: 15,
                                        ),
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
              const SizedBox(height: 15),
              Row(
                children: const [
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
              const SizedBox(
                height: 18,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.account_balance_sharp,
                            size: 90,
                            color: Colors.brown,
                          ),
                          Text(
                            "My Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.credit_card_rounded,
                            size: 90,
                            color: Colors.grey,
                          ),
                          Text(
                            "Cards",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.paypal,
                            size: 90,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "Payment",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.transform,
                            size: 90,
                            color: Colors.blueGrey,
                          ),
                          Text(
                            "Fund Transfer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.schedule_rounded,
                            size: 90,
                            color: Colors.brown,
                          ),
                          Text(
                            "Scheduled\n Payment",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.qr_code_scanner,
                            size: 90,
                            color: Colors.teal,
                          ),
                          Text(
                            "Scan To Pay",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.local_activity, color: Colors.brown, size: 30),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "LAST TRANSACTIONS",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.brown,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SBIN/5465234876535487627",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("22-07-25")
                        ],
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      const Text(
                        "INR.543673.00",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.brown,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SBIN/5347826523476732876",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("12-07-32")
                        ],
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      const Text(
                        "INR.34567.00",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.brown,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SBIN/5378235485152965189",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("23-11-10")
                        ],
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      const Text(
                        "INR.876538.00",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.brown,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SBIN/786342917676439021",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("31-02-16")
                        ],
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      const Text(
                        "INR.786594.00",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.brown,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SBIN/673845763588763209",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("22-12-42")
                        ],
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      const Text(
                        "INR.3847.00",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
