import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // * selected index
  int _selectedIndex = 0;

  List<String> _taglist = [
    'All',
    'Social',
    'Master Password',
    'Bank account',
    'Bills',
    'Personal',
    'Shopping',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => print('settings pressed'),
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("addaccount");
              },
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 27.0,
              ),
            ),
          )
        ],
        title: Text(
          "KeepMeSafe",
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _taglist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: index == _selectedIndex
                              ? Border.all(
                                  width: 1,
                                  color: Color(0xff00F7DA),
                                )
                              : null,
                          color: Color(0xFF242627),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Center(
                          child: Text(
                            _taglist[index],
                            style: TextStyle(
                                color: Color(0xffc5c5c5), fontSize: 15.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  // TODO : create a json file and create a list view builder
                ),
              )
            ],
          )),
    );
  }
}
