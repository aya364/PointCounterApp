import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  _PointsCounterState createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;
  int teamBpoints = 0;

  void addOnePointA() {
    setState(() {
      teamApoints += 1;
    });
  }

  void addTwoPointA() {
    setState(() {
      teamApoints += 2;
    });
  }

  void addThreePointA() {
    setState(() {
      teamApoints += 3;
    });
  }

  void addOnePointB() {
    setState(() {
      teamBpoints += 1;
    });
  }

  void addTwoPointB() {
    setState(() {
      teamBpoints += 2;
    });
  }

  void addThreePointB() {
    setState(() {
      teamBpoints += 3;
    });
  }

  int score() {
    return teamApoints + teamBpoints;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 106, 145),
          leading:Icon(Icons.water_drop_rounded,
          color: Colors.cyanAccent,
          ) ,
          title: const Text(
            'Water bottle shop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Elano',
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 150,
                        color: Color.fromARGB(255, 7, 79, 137),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addOnePointA,
                          child: const Text(
                            'Add 1 bottle',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addTwoPointA,
                          child: const Text(
                            'Add 2 bottles',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addThreePointA,
                          child: const Text(
                            'Add 3 bottles',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 3,
                    color: Color.fromARGB(255, 8, 107, 187),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Puvana',
                      style: TextStyle(
                          fontSize: 33,
                          color: Color.fromARGB(255, 248, 216, 5),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(
                        fontSize: 150,
                        color: Color.fromARGB(255, 137, 26, 7),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addOnePointB,
                          child: const Text(
                            'Add 1 bottle',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addTwoPointB,
                          child: const Text(
                            'Add 2 bottles',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 70)),
                          onPressed: addThreePointB,
                          child: const Text(
                            'Add 3 bottles',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 40, 7, 255),
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(150, 70)),
                  onPressed: () {
                    setState(() {
                      teamApoints = 0;
                      teamBpoints = 0;
                    });
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 40, 7, 255),
                    ),
                  )),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(minimumSize: Size(150, 70)),
            //       onPressed: () {
            //         setState(() {});
            //       },
            //       child: const Text(
            //         'Score',
            //         style: TextStyle(
            //           fontSize: 23,
            //           color: Color.fromARGB(255, 40, 7, 255),
            //         ),
            //       )),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ListTile(
                leading: Text(
                  'Total bottles: ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                title: Text(
                  '${score()}',
                  style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 99, 64),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
