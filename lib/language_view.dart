import 'package:flutter/material.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.purple,
          border: Border(
              top: BorderSide(
                width: 2,
                color: Colors.amber,
              ),
              bottom: BorderSide(width: 2, color: Colors.amber))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'English',
            style: TextStyle(color: Colors.amber),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Hindi',
            style: TextStyle(color: Colors.amber),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Mararthi',
            style: TextStyle(color: Colors.amber),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
