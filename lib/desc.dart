import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'foods.dart';
import 'tra.dart';

class desc extends StatefulWidget {
  food f;
  desc({super.key, required this.f});

  @override
  State<desc> createState() => _descState(f);
}

class _descState extends State<desc> {
  food f;
  _descState(this.f);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 102, 225, 106),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 86, 76),
          title: Text("foodie"),
        ),
        body: Column(
          children: [
            Image.asset(f.image),
            Container(
                child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${f.price}",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                  Text(
                    "${f.name}",
                    style: TextStyle(color: Colors.black26, fontSize: 20),
                  ),
                  Text(
                    f.desc,
                    style: TextStyle(color: Colors.black12, fontSize: 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        child: Icon(Icons.add),
                        onPressed: () {
                          tra.ls[f.ind]++;
                          print(tra.ls);
                          setState(() {});
                        },
                      ),
                      TextButton(
                        child: Icon(Icons.remove),
                        onPressed: () {
                          tra.ls[f.ind]--;
                          print(tra.ls);
                          setState(() {});
                        },
                      ),
                      Text("${tra.ls[f.ind]}")
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
