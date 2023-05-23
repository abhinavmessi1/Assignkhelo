import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://kheloo.com/images/logo.gif',
                    height: 40,
                    width: 100,
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkNXnUH2XW-jK_7FjQjzXDOjN4iK0SjSavYQ&usqp=CAU',
                        height: 40,
                        width: 40,
                      ),
                      const Text(
                        'Promotions',
                        style: TextStyle(color: Colors.amber, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: 60,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.amber,
            child: const Text(
              'LOGIN',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
