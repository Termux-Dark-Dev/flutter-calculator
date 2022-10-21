import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _Calc createState() => _Calc();
}

class _Calc extends State<Calc> {
  num res = 0;
  final _no1controller = TextEditingController();
  final _no2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _no1controller,
            decoration: InputDecoration(
              hintText: 'Enter 1st No',
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _no2controller,
            decoration: InputDecoration(
              hintText: 'Entre 2nd No',
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                onPressed: () {
                  res = int.parse(_no1controller.text.toString()) +
                      int.parse(_no2controller.text.toString());
                  setState(() {});
                },
                minWidth: 60.0,
                height: 40.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              MaterialButton(
                  minWidth: 60.0,
                  height: 40.0,
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    res = int.parse(_no1controller.text.toString()) -
                        int.parse(_no2controller.text.toString());
                    setState(() {});
                  }),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  minWidth: 60.0,
                  height: 40.0,
                  child: Text(
                    '*',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    res = int.parse(_no1controller.text.toString()) *
                        int.parse(_no2controller.text.toString());
                    setState(() {});
                  }),
              SizedBox(
                width: 20.0,
              ),
              MaterialButton(
                  minWidth: 60.0,
                  height: 40.0,
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    res = int.parse(_no1controller.text.toString()) /
                        int.parse(_no2controller.text.toString());
                    setState(() {});
                  }),
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            'OUTPUT : $res',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
