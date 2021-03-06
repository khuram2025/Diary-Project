import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? _dropDownText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 4.0,
        backgroundColor: Colors.grey.shade100,
        title: Row(
          children: [
            Text(
              "Dairy",
              style: TextStyle(
                  fontSize: 39,
                  color: Colors.grey.shade400
              ),
            ),
            Text(
              "Book",
              style: TextStyle(
                  fontSize: 39,
                  color: Colors.green
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(items: <String>[
                  "Latest", "Earliest"
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                    value, style: TextStyle(
                        color: Colors.grey
                      ),
                  ));
                }).toList(),
                  hint: (_dropDownText == null) ? Text('Select') : Text(_dropDownText!),
                  onChanged: (value){
                  if ( value == 'Latest') {
                    setState(() {
                      _dropDownText = value;
                    });
                  } else if (value == 'Earliest'){
                    setState(() {
                      _dropDownText = value;
                    });
                  }
                  },
                ),

              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Expanded(child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                "https://picsum.photos/200/300",
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text("Khan Ji", style: TextStyle(
                          color: Colors.grey
                        ),)
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined, size: 19, color: Colors.redAccent,))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}