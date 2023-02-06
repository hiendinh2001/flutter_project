import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

//TP 4.2
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         body: SafeArea(
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.white,
//                 child: Text("Container 1"),
//               ),
//               SizedBox(width: 20.0),
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.red,
//                 child: Text("Container 2"),
//               ),
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.blue,
//                 child: Text("Container 3"),
//               ),
//               //Container(
//               //width: double.infinity,
//               //height: 10.0,
//               //),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//TP 4.3
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 width: 100.0,
//                 color: Colors.red,
//                 child: Text("Container 1"),
//               ),
//               Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: 100.0,
//                       width: 100.0,
//                       color: Colors.yellow,
//                       child: Text("Container 2.1"),
//                     ),
//                     Container(
//                       height: 100.0,
//                       width: 100.0,
//                       color: Colors.green,
//                       child: Text("Container 2.2"),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: 100.0,
//                 color: Colors.blue,
//                 child: Text("Container 3"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//TP 4.4

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              Text(
                'Dinh Thi Thu Hien',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Full Stack Engineer (Apprenticeship)',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.teal
                      .shade100, //changer les espaces entre les lettres ou l’intensité de la couleur
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade50,
                  )),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "+33 6 17 18 13 23",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "hien25042001@gmail.com",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              )
              // Container(
              //   color: Colors.white,
              //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              //   padding: EdgeInsets.all(10.0),
              //   child: Row(
              //     children: <Widget>[
              //       Icon(
              //         Icons.call,
              //         size: 20.0,
              //         color: Colors.teal.shade900,
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Text(
              //         "+33 6 17 18 13 23",
              //         style: TextStyle(
              //             color: Colors.teal.shade900,
              //             fontSize: 20.0,
              //             fontFamily: 'Source Sans Pro'),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   color: Colors.white,
              //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              //   padding: EdgeInsets.all(10.0),
              //   child: Row(
              //     children: <Widget>[
              //       Icon(
              //         Icons.email,
              //         size: 20.0,
              //         color: Colors.teal.shade900,
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Text(
              //         "hien25042001@gmail.com",
              //         style: TextStyle(
              //             color: Colors.teal.shade900,
              //             fontSize: 20.0,
              //             fontFamily: 'Source Sans Pro'),
              //       ),
              //    ],
              //  ),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
