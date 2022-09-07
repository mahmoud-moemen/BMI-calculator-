import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,

              backgroundImage: NetworkImage(
                  'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
            ),
            SizedBox(width: 15.0),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05.0),
                    color: Colors.grey[300]),
                padding: EdgeInsets.all(5.0) ,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('search'),
                  ],
                ),
              ), // search bar
              SizedBox(height: 20.0),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index)
                  {
                    return BuildStoryItem ();
                  } ,
                  separatorBuilder: (context,index)
                  {
                    return SizedBox(width: 20.0,);
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 40.0),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true ,
                  itemBuilder: ((context, index) => buildChatItem ()),
                  separatorBuilder: ((context,index)=>SizedBox(height: 20.0,)),
                  itemCount:15,
              ),

            ],
          ),
        ),
      ),
    );
  }

 Widget buildChatItem () => Row(
   children: [
     Stack(
       alignment: AlignmentDirectional.bottomEnd,
       children: [
         CircleAvatar(
           radius: 30.0,
           backgroundImage: NetworkImage(
               'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
         ),
         CircleAvatar(
           radius: 11.0,

           backgroundColor:Colors.white,
         ),
         Padding(
           padding: const EdgeInsetsDirectional.only(
             bottom: 03.0,
             end: 03.0,
           ),
           child: CircleAvatar(
             radius: 8.0,

             backgroundColor:Colors.green,
           ),
         ),
       ],
     ),
     SizedBox(
       width:20.0,
     ),
     Expanded(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'mahmoud moamen ',
             style: TextStyle(
                 fontSize:16.0,
                 fontWeight: FontWeight.bold
             ),

             maxLines: 1,
             overflow: TextOverflow.ellipsis,
           ),
           SizedBox(
             height: 5.0,
           ),
           Row(
             children: [
               Expanded(
                 child: Text(
                   'hello my name is jouny some messages come from to my chat from anthor one',
                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(
                   horizontal: 10.0,
                 ),
                 child: Container(
                   width: 07.0,
                   height: 07.0,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.blue
                   ),
                 ),
               ),
               Text(
                 '02:00  pm',
               ),
             ],
           ),
         ],
       ),
     ),

   ],
 );

  Widget BuildStoryItem () => Container(
    width: 60.0,
    child: Column(
      children:
      [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
            ),
            CircleAvatar(
              radius: 11.0,

              backgroundColor:Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 03.0,
                end: 03.0,
              ),
              child: CircleAvatar(
                radius: 8.0,

                backgroundColor:Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 05.0,
        ),
        Text(
          'Ahmed ali mahmoud',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );

}


// SingleChildScrollView(
//
// scrollDirection : Axis.horizontal,
// child: Row(
// children: [
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// SizedBox(
// width: 15.0,
// ),
// Container(
// width: 60.0,
// child: Column(
// children:
// [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 05.0,
// ),
// Text(
// 'Ahmed ali mahmoud',
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// Expanded(
// child: SingleChildScrollView(
// child: Column(
// children: [
// SizedBox(
// height: 30.0,
// ),
//
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ), SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// SizedBox(
// height:20.0,
// ),
// Row(
// children: [
// Stack(
// alignment: AlignmentDirectional.bottomEnd,
// children: [
// CircleAvatar(
// radius: 30.0,
// backgroundImage: NetworkImage(
// 'http://www.globaledico.com/wp-content/uploads/revslider/homepage4/person.png'),
// ),
// CircleAvatar(
// radius: 11.0,
//
// backgroundColor:Colors.white,
// ),
// Padding(
// padding: const EdgeInsetsDirectional.only(
// bottom: 03.0,
// end: 03.0,
// ),
// child: CircleAvatar(
// radius: 8.0,
//
// backgroundColor:Colors.green,
// ),
// ),
// ],
// ),
// SizedBox(
// width:20.0,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'mahmoud moamen ',
// style: TextStyle(
// fontSize:16.0,
// fontWeight: FontWeight.bold
// ),
//
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// SizedBox(
// height: 5.0,
// ),
// Row(
// children: [
// Expanded(
// child: Text(
// 'hello my name is jouny some messages come from to my chat from anthor one',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0,
// ),
// child: Container(
// width: 07.0,
// height: 07.0,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue
// ),
// ),
// ),
// Text(
// '02:00  pm',
// ),
// ],
// ),
// ],
// ),
// ),
//
// ],
// ),
// ],
// ),
// ),
// ),