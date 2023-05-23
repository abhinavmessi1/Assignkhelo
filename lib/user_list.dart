import 'package:assigment/data/dummydata.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Map<String, dynamic>> userlist = user;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.yellow, Colors.white],
  ).createShader(Rect.fromLTWH(0.0, 120.0, 300.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          child: Center(
            child: Text(
              "Live Withdraw",
              style: TextStyle(
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                  decoration: TextDecoration.underline,

                  //  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  foreground: Paint()..shader = linearGradient),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AnimatedContainer(
            padding: EdgeInsets.all(20),
            height: 150,
            width: 380,
            duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple.shade800, Colors.purple.shade600],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 4,
                color: Colors.amberAccent,
              ),
            ),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 40,
                ),
                itemCount: userlist.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      radius: 15,
                      backgroundColor: Colors.grey,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "${userlist[index]['name']}",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          size: 20,
                        ),
                        Text("${userlist[index]['ruppe']}")
                      ],
                    ),
                    //  trailing: ,
                    // subtitle: Text("${DateTime.now().millisecond.toString()}"),
                  );
                })),
      ],
    );
  }
}
