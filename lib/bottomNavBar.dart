import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: BottomNavigation(),
    );
  }
}


class BottomNavigation extends StatefulWidget {
  @override  _BottomNavigation createState() => new _BottomNavigation();
}

// SingleTickerProviderStateMixin is used for animation

class _BottomNavigation extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    new DialledCallsPage(),
    new MissedCallsPage(),
    new ReceivedCallsPage()
  ];

  @override  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar        appBar: new AppBar(
      // Title          title: new Text("Bottom Navigation"),
      // Set the background color of the App Bar          backgroundColor: Colors.blue,

        body: _children[_currentIndex],

        // Set the bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_made),
                  title: new Text('All Calls')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_missed), title: new Text('Missed')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_received),
                  title: new Text('Received')),
            ])

    );
  }
}

List<Contact> missedCallContacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
  Contact(fullName: 'Narendra', email: 'Narendra@example.com'),
  Contact(fullName: 'Sravan ', email: 'Sravan@example.com'),
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];

List<Contact> receivedCallContacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
];

List<Contact> dialledCallContacts = [
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];

class MissedCallsPage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
    return new _MissedCallsPage();
  }
}

class _MissedCallsPage extends State<MissedCallsPage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: missedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${missedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${missedCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('${missedCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, missedCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class ReceivedCallsPage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
    return new _ReceivedCallsPage();
  }
}

class _ReceivedCallsPage extends State<ReceivedCallsPage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: receivedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${receivedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${receivedCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child:
                        Text('${receivedCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, receivedCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class DialledCallsPage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
    return new _DialledCallsPage();
  }
}

class _DialledCallsPage extends State<DialledCallsPage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: dialledCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${dialledCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${dialledCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child:
                        Text('${dialledCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, dialledCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}