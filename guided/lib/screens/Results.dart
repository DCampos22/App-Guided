import 'package:flutter/material.dart';

import 'jobInfo.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: Colors.white, size: 50.0),
                  Image.asset("assets/images/profile.png", width: 50.0)
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Your Results:",
                style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  
                                  child: Column(
                                    children: [
                                      
                                      Image.asset("assets/images/engineer.png", width: 64.0),
                                      SizedBox(height: 10.0),
                                      Text("Mech Engineer", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0
                                      )),
                                      TextButton(
                                            style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                            ),
                                            onPressed: () { 
                                              Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Job()));
                                            },
                                            child: Text('More Info'),
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                        ),
                      ),
                      
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/tech_sales.png", width: 64.0),
                                      SizedBox(height: 10.0),
                                      Text("Tech Sales", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0
                                      )),
                                      TextButton(
                                            style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                            ),
                                            onPressed: () { 
                                              Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Job()));
                                            },
                                            child: Text('More Info'),
                                          ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/cyber_security.png", width: 64.0),
                                      SizedBox(height: 10.0),
                                      Text("Cyber Security", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0
                                      )),
                                      TextButton(
                                            style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                            ),
                                            onPressed: () { 
                                              Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Job()));
                                            },
                                            child: Text('More Info'),
                                          ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/web_dev.png", width: 64.0),
                                      SizedBox(height: 10.0),
                                      Text("Web Development", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0
                                      )),
                                      TextButton(
                                            style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                            ),
                                            onPressed: () { 
                                              Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Results()));
                                            },
                                            child: Text('More Info'),
                                          ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                        ),
                      )
                    ],
                   ) ,
                ),
              )
          ],
        ),
      ),
    );
  }
}