import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';


class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  List<UserModel> get users => [
    UserModel(
      id: 1,
      name: 'mahmoud moemen',
      phone: '0201006331294',
    ),
    UserModel(
      id: 2,
      name: 'ahmed ali',
      phone: '0201005641294',
    ),
    UserModel(
      id: 3,
      name: 'osama ahamed',
      phone: '01001994602',
    ),
    UserModel(
      id: 1,
      name: 'mahmoud moemen',
      phone: '0201006331294',
    ),
    UserModel(
      id: 2,
      name: 'ahmed ali',
      phone: '0201005641294',
    ),
    UserModel(
      id: 3,
      name: 'osama ahamed',
      phone: '01001994602',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context,index) => BuildUserItem(users[index]),
          separatorBuilder:(context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(start:20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ) ,
          itemCount:users.length ,
      ),

    );
  }
 Widget BuildUserItem(UserModel user)=>Padding(
   padding: const EdgeInsets.all(20.0),
   child: Row(
     children: [
       CircleAvatar(
         radius: 25.0,
         child: Text(
           '${user.id}',
           style: TextStyle(
             fontSize: 25.0,
             fontWeight: FontWeight.bold,
           ),
         ),
       ),
       SizedBox(
         width:20.0 ,
       ),
       Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start ,
         children:
         [
           Text(
             ' ${user.name}',
             style: TextStyle(
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           Text(
             '${user.phone}',
             style: TextStyle(
               color: Colors.grey,
             ),

           ),
         ],
       ),
     ],
   ),
 );
}
