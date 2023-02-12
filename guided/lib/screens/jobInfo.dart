import 'package:flutter/material.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
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
                "Mechanical Engineer: ",
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
                                      
                                      Image.asset("assets/images/Salary.png", width: 57.0),
                                      SizedBox(height: 10.0),
                                      Text("Average Salary", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                      )),
                                      
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
                                      Image.asset("assets/images/Job_Prospects.png", width: 85.0),
                                      SizedBox(height: 10.0),
                                      Text("Job Prospects", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                      )),
                                      
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
                                      Image.asset("assets/images/Certificate.png", width: 64.0),
                                      SizedBox(height: 10.0),
                                      Text("Certifications", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                      )),
                                      
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
                                      Image.asset("assets/images/Free_Resources.png", width: 60.0),
                                      SizedBox(height: 10.0),
                                      Text("Free Resources", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                      )),
                                      
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