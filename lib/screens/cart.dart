import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
    print('cart --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('cart --> build');
    return Scaffold(
      appBar: Header(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 70,
              child: TextField(
                maxLength: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Row',
                ),
                onChanged: (value) => {
                  setState(() {
                    try {
                      iRow = int.parse(value) ?? 1;
                    } catch (error) {
                      iRow = 1;
                    }
                  })
                },
              ),
            ),
            Container(
              width: 200,
              height: 70,
              child: TextField(
                maxLength: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Column',
                ),
                onChanged: (value) => {
                  setState(() {
                    try {
                      iColumn = int.parse(value) ?? 1;
                    } catch (error) {
                      iColumn = 1;
                    }
                  })
                },
              ),
            ),
            Row(
                children: List.generate(
                    iRow,
                    (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            (1 + index).toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          width: 50,
                          height: 50,
                        ))),
            Row(
                children: List.generate(
                    iColumn,
                    (index) => Column(
                        children: List.generate(
                            iColumn,
                            (index2) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    (1 + index2).toString(),
                                  )),
                                  width: 50,
                                  height: 50,
                                ))))),
            Row(
                children: List.generate(
                    iRow,
                    (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            (1 + index).toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          width: 50,
                          height: 50,
                        ))),
            Row(
                children: List.generate(
                    iColumn,
                    (index) => Column(
                        children: List.generate(
                            iColumn,
                            (index2) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    (1 + index2).toString(),
                                  )),
                                  width: 50,
                                  height: 50,
                                ))))),
            Row(
                children: List.generate(
                    iRow,
                    (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            (1 + index).toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          width: 50,
                          height: 50,
                        ))),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  var iRow = 1;
  var iColumn = 1;
}
