import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class delivary extends StatefulWidget {
  const delivary({super.key});

  @override
  State<delivary> createState() => _delivaryState();
}

String sst = "";

class _delivaryState extends State<delivary> {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("thank you for shopping with us \n"),
            Text("enter the address to delivery the goods \n"),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                label: Text("address"),
                hintText: "",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                sst = value;
                setState(() {});
                print(sst);
              },
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                label: Text("phone no"),
                hintText: "",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                // sst = value;
                // setState(() {});
                // print(sst);
              },
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  print(sst);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => finish(ss: sst))));
                },
                child: Text(
                  "done",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

class finish extends StatefulWidget {
  String ss;
  finish({super.key, required this.ss});

  @override
  State<finish> createState() => _finishState(ss);
}

class _finishState extends State<finish> {
  String ss;
  _finishState(this.ss);
  @override
  Widget build(BuildContext context) {
    print(ss);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 86, 76),
          title: Text("foodie"),
        ),
        body: Center(
            child: Text(
          "the items will we deleveried soon to this address \n $ss \n thank you	😁",
          style: TextStyle(color: Colors.blue),
        )),
      ),
    );
  }
}
