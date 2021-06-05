import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ecom App UI",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            input("Tell us about yourself"),
            history(),
            abc("Iphone 12","iphone12.jpeg"),
            abc("Note 20 Ultra","note20.jpeg"),
            abc("Macbook Air","Macbookair.jpeg"),
            abc("Macbook Pro","Macbookpro.jpeg"),
            abc("Gaming Pc","gaming.jpeg"),
            abc("baklit Keyboard","baklit.jpeg"),
            abc("Mercedes","mercedes.jpeg"),
            abc("Mutton","Mutton.jpeg"),
          ],
        ),
      ),
    );
  }
}

Widget history() {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.0,
      top: 20.0,
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 50,
        width: 50,
        child: Text(
          "History",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    ),
  );
}

Widget input(String text) {
  return Padding(
    padding: EdgeInsets.only(
      left: 10.0,
      top: 20.0,
      right: 10.0,
    ),
    child: TextField(
      decoration: InputDecoration(
        fillColor: Colors.white12,
        border:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.teal)),
        hintText: '$text',
        suffixIcon: Icon(
          Icons.search,
        ),
      ),
    ),
  );
}

Widget abc(String name,String imageAddress) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('$imageAddress'),
      radius: 20,
    ),
    title: Text(
      "$name",
    ),
    subtitle: Text(
      "Hey bro whats popin...",
    ),
    trailing: Column(
      children: [
        Text(
          "\$10",
        ),
      ],
    ),
  );
}



// Container(
//           color: Colors.purple,
//           height: MediaQuery.of(context).size.height * 0.5,
//           width: MediaQuery.of(context).size.width * 0.5,
//         ),

// Stack(
//         children: [
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.yellow,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.blue,
//             ),
//           ),
//           Positioned(
//             top: 20,
//             left: 20,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.black,
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.red,
//             ),
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),

// Align(
//         alignment: Alignment.bottomRight,
//         child: Container(
//           // margin: EdgeInsets.only(top: 20),
//           padding: EdgeInsets.only(left: 20, top: 20),
//           child: Text("BOX DECORATION"),
//           height: 200,
//           width: 200,
//           decoration: BoxDecoration(
//             color: Color(0xff14e3ce), // Oxff is necessary before color code
//             // gradient: LinearGradient(
//             //   colors: [
//             //     Colors.red,
//             //     Colors.yellow,
//             //   ],
//             // ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),

// Center(
//         child: Text(
//           "Hello Flutter",
//           style: TextStyle(
//             color: Colors.red,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,

//           ),
//         ),
//       ),

// Center(
//         child: CircleAvatar(
//           radius: 100,

//           // NetworkImage picks image online
//           //   backgroundImage: NetworkImage(
//           //       'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
//           // ),

//           // AssetImage is already downloaded and is placed in flutter project
//           backgroundImage: AssetImage('assets/bg.jpeg'),
//         ),
//       ),
