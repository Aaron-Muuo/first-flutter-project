import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: (){
            debugPrint("Action");
          }, icon: const Icon(Icons.add_call))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/room.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
              color:Colors.blueGrey,
              width: double.infinity,
              child: const Text(
                'This is a tect widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue
              ),
              onPressed: (){},
              child: const Text("Elevated button"),
            ),
            OutlinedButton(
              onPressed: (){},
              child: const Text("Outlined button"),
            ),
            TextButton(
              onPressed: (){},
              child: const Text("Text button"),
            ),
            GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  debugPrint("This is the row");
                },
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.party_mode,
                      color: Colors.blue,
                    ),
                    Text("ROw text spaced evenly"),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                )
            ),
            Switch(value: isSwitch, onChanged: (bool newBool){

              setState((){
                isSwitch = newBool;
              });

            }),

            Checkbox(value: isCheckbox, onChanged: (bool? newBool){
              setState((){
                isCheckbox = newBool;
              });
            }),
            Image.network('https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png'),
          ],
        ),
      )
    );

  }
}

