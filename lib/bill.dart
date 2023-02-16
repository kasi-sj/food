import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_application/delivary.dart';
import 'package:food_application/foods.dart';
import 'menu.dart';
import 'tra.dart';

class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    List<Widget> lt = [];
    double total = 0;
    for (int i = 0; i < 16; i++) {
      if (tra.ls[i] > 0) {
        lt.add(item(fds[i]));
        total += tra.ls[i] * fds[i].price;
      }
    }
    print(lt);
    return MaterialApp(
      color: Color.fromARGB(255, 102, 225, 106),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 86, 76),
          title: Text("foodie"),
        ),
        body: Container(
          child: Column(
            children: [
              Flexible(
                flex: 70,
                child: ListView(
                  children: lt,
                ),
              ),
              Flexible(
                flex: 20,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "BILL",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                        Text(
                          "$total",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton.icon(
                          onPressed: () {
                            for (int i = 0; i < 16; i++) tra.ls[i] = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => delivary()));
                          },
                          icon: Icon(Icons.check_outlined),
                          label: Text("checkout")),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget item(food f) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: ListTile(
        leading: ClipOval(
          child: Hero(tag: f.image, child: Image.asset(f.image)),
        ),
        title: Column(
          children: [
            Text(
              f.name,
              style: TextStyle(fontSize: 10, color: Colors.black12),
            ),
            Text(
              " ${f.price} ",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            )
          ],
        ),
        trailing: Text(tra.ls[f.ind].toString() +
            "*  " +
            f.price.toString() +
            " = "
                "${tra.ls[f.ind] * f.price}"),
      ),
    );
  }
}
