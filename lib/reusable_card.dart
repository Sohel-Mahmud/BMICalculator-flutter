import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  ResuableCard({@required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          //use color on boxdecoration if its used
          //using color on container will lead to an error
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}

/*
//we can change theme of any widget by wrapping them with theme widget

floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.purple,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
*/
