import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_application/desc.dart';
import 'foods.dart';
import 'bill.dart';

List<Widget> temp = [];
List<food> fds = [];

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  void make() {
    if (temp.isEmpty) {
      fds.add(
        food("assets/images/chappathi.jpeg", "chappathi with masala 2",
            "chappathi ", 30.0, 0),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/chappathi.jpeg", "chappathi with masala 2",
                  "chappathi", 30.0, 0),
            ),
          ),
        ),
      );
      fds.add(
        food(
            "assets/images/chicken_biriyani.jpeg",
            "chicken briyani with gravy and onion",
            "chicken biriyani",
            180.0,
            1),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food(
                  "assets/images/chicken_biriyani.jpeg",
                  "chicken briyani with gravy and onion",
                  "chicken biriyani",
                  180.0,
                  1),
            ),
          ),
        ),
      );
      fds.add(food("assets/images/Chicken_Gravy.jpg", "Chicken_Gravy",
          "Chicken Gravy", 200.0, 2));
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/Chicken_Gravy.jpg", "Chicken_Gravy",
                  "Chicken Gravy", 200.0, 2),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/dosa.jpeg", "dosa with sambar and chuttni", "dosa",
            60.0, 3),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/dosa.jpeg", "dosa with sambar and chuttni",
                  "dosa", 60.0, 3),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/fish_gravy.jpg", "fish gravy one bowl",
            "fish gravy", 260.0, 4),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/fish_gravy.jpg", "fish gravy one bowl",
                  "fish gravy", 260.0, 4),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/friedrice.jpeg", "fried rice one plate",
            "friedrice", 90.0, 5),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/friedrice.jpeg", "fried rice one plate",
                  "friedrice", 90.0, 5),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/idli.jpeg", "idli 3", "idli", 30.0, 6),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/idli.jpeg", "idli 3", "idli", 30.0, 6),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/mutton_gravy.jpeg", "", "mutton gravy one cup",
            260.0, 7),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/mutton_gravy.jpeg", "",
                  "mutton gravy one cup", 260.0, 7),
            ),
          ),
        ),
      );
      ;
      fds.add(
        food("assets/images/mutton_briyani.jpeg", "mutton briyani one plate",
            "mutton briyani", 220.0, 8),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/mutton_briyani.jpeg",
                  "mutton briyani one plate", "mutton briyani", 220.0, 8),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/egg_briyani.jpeg", "egg briyani one plate",
            "egg briyani", 130.0, 9),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/egg_briyani.jpeg", "egg briyani one plate",
                  "egg briyani", 130.0, 9),
            ),
          ),
        ),
      );
      fds.add(
        food(
            "assets/images/pongal.jpg", "pongal one plate", "pongal", 30.0, 10),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/pongal.jpg", "pongal one plate", "pongal",
                  30.0, 10),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/punnerbuttermasala.jpeg",
            "punnerbuttermasala one cup", "punnerbuttermasala", 160.0, 11),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food(
                  "assets/images/punnerbuttermasala.jpeg",
                  "punnerbuttermasala one cup",
                  "punnerbuttermasala",
                  160.0,
                  11),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/puri.jpeg", "puri 2", "puri", 30.0, 12),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/puri.jpeg", "puri 2", "puri", 30.0, 12),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/samosa.jpeg", "samosa 1", "samosa", 10.0, 13),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/samosa.jpeg", "samosa 1", "samosa", 10.0, 13),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/thandoori.jpeg", "thandoori full", "thandoori",
            260.0, 14),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/thandoori.jpeg", "thandoori full",
                  "thandoori", 260.0, 14),
            ),
          ),
        ),
      );
      fds.add(
        food("assets/images/vada.jpeg", "vada with sambar", "vada", 30.0, 15),
      );
      temp.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: Flexible(
            flex: 3,
            child: item(
              food("assets/images/vada.jpeg", "vada with sambar", "vada", 30.0,
                  15),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    make();

    return MaterialApp(
      color: Color.fromARGB(255, 102, 225, 106),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 86, 76),
          title: Text("foodie"),
        ),
        body: ListView(
          children: temp,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add_chart,
            ),
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Bill())))
                }),
      ),
    );
  }

  Widget item(food f) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return desc(f: f);
        }));
      },
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
    );
  }
}
