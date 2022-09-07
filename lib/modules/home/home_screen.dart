import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          leading: Icon(Icons.menu),
          title: Text('first app'),
          actions: [
            IconButton(
              onPressed: () {
                print('notification is clicked ');
              },
              icon: Icon(Icons.notification_important),
            ),
            // Icon(
            //   Icons.notification_important
            // ),
            Icon(Icons.search),
          ],
          centerTitle: true,
          toolbarOpacity: 0.7,
        ),
        body: Column(
          children: [
            Container(
              width: 250.0,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(
                      50.0
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        image: NetworkImage(
                          'https://cdn.shopify.com/s/files/1/0282/9588/9028/products/EarlySummerFunFarmboy-Hovercopy_400x.jpg?v=1653922841'
                        ),
                        width: 250.0,
                        height: 200.0,
                        fit:BoxFit.cover ,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.5),
                        padding:EdgeInsets.symmetric(
                          vertical: 10.0,

                        ) ,
                        child: Text(
                          'flower',
                          textAlign:TextAlign.center ,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
// row
// Container(
//   //color: Colors.teal,
//   height: double.infinity,
//   child: Row(
//     mainAxisSize: MainAxisSize.max,
//     children: [
//       Container(
//         color: Colors.red,
//         child: Text(
//             'First ',
//         style: TextStyle(
//           fontSize: 20.0,
//           color: Colors.white,
//         ),),
//       ),
//       Container(
//         color: Colors.green,
//         child: Text(
//           'second ',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),),
//       ),
//       Container(
//         color: Colors.blue,
//         child: Text(
//           'third ',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),),
//       ),
//       Container(
//         color: Colors.amber,
//         child: Text(
//           'fourth ',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),),
//       ),
//
//     ],
//   ),
// )


// column and column attribute
// Container(
//   color: Colors.purpleAccent,
//   width:double.infinity ,
//   child: Column(
//     mainAxisAlignment:MainAxisAlignment.center ,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisSize: MainAxisSize.max,
//     children: [
//       Container(
//
//         color: Colors.red,
//         child: Text(
//           'first text',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30.0,
//
//           ),
//         ),
//       ),
//       Container(
//
//         color: Colors.green,
//         child: Text(
//           'second text',
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 30.0,
//               backgroundColor: Colors.green
//           ),
//         ),
//       ),
//       Container(
//         color: Colors.blue,
//         child: Text(
//           'third text',
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 30.0,
//
//           ),
//         ),
//       ),
//       Container(
//         color: Colors.amber,
//         child: Text(
//           'third text',
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 30.0,
//               backgroundColor: Colors.amber
//           ),
//         ),
//       ),
//     ],
//   ),
// ),

// SingleChildScrollView(
// scrollDirection:Axis.horizontal ,
// child: Row(
//
//
// children: [
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'First',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Second',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'third',
// style: TextStyle(fontSize: 30.0),
// ),
// Text(
// 'Fourth',
// style: TextStyle(fontSize: 30.0),
// ),
// ],
// ),
// )