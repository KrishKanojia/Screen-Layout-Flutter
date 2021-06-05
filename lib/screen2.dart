
import 'package:flutter/material.dart';
import 'screen3.dart';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen3(),
                      ),
                    );
                  },
                  child: Text(
                    "Next Page",
                  ),
                ),
              ],
            ),
            bio("Krish"),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Account Information",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                info("Krish Kanojia", "Full Name"),
                info("Krish@gmail.com", "Email"),
                info("+0900-45871", "Phone"),
                info("Railway Cantt", "Address"),
                info("Male", "Gender"),
                info("10-Mar-2001", "Date of Birth"),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget info(String name, String heading) {
  return ListTile(
    title: Text(
      "$heading",
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Text(
      "$name",
    ),
    trailing: Column(
      children: [
        Icon(
          Icons.edit,
        )
      ],
    ),
  );
}

Widget bio(String name) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Row(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              child: Icon(
                Icons.person,
                size: 180.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0),
              child: Container(
                width: 150.0,
                height: 120.0,
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$name",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "$name\@gmail.com",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
