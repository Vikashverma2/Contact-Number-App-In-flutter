import 'package:flutter/material.dart';
import 'package:number_note/pages/ListEditPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _DemoPageState();
}

class _DemoPageState extends State<HomePage> {
  List contactlist = [
    {
      "Name": "Vikash vemra",
      "Number": "7323445632",
    },
    {
      "Name": "Nitish kumar",
      "Number": "70456754342",
    },
  ];

  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Number Notes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: name,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextField(
              controller: number,
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Number",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  var contact = {
                    "Name": name.text,
                    "Number": number.text,
                  };
                  setState(() {
                    contactlist.add(contact);
                  });
                },
                child: Text(
                  "Save",
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              children: contactlist
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => EditPage(),
                                ));
                          });
                        },
                        child: ListTile(
                          tileColor: Color.fromRGBO(57, 56, 56, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          leading: Icon(
                            Icons.fact_check,
                            color: Colors.white,
                          ),
                          trailing: InkWell(
                            onTap: () {
                              setState(() {
                                contactlist.removeWhere(
                                    (item) => item["Name"] == e["Name"]);
                              });
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          textColor: Colors.white,
                          title: Text(e["Name"]),
                          subtitle: Text(e["Number"]),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
