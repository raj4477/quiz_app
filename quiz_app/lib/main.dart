import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz App',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ_APP'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green[300],
      body: Center(
        child: RaisedButton(
          child: Text('Click Here to START'
          ),
          color: Colors.orangeAccent,
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text("LEVEL OF QUIZ"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children :<Widget>[
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
                },

                child: Text('EASY'),

              ),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
                },
                child: Text('MEDIUM'),
              ),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
                },
                child: Text('HARD'),
              ),
            ]
        ),
      ),
    );
  }
}
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int count=0;
  void rightans(){
    setState(() {
      ++count;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[300],
        appBar: AppBar(
          title: Text('Easy Quiz'),
        ),
        body: Column(
            children:<Widget> [
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('Father of Computer'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){rightans();},
                      child: Text('Charles Babbage')),
                  SizedBox(width: 50,),
                  RaisedButton(onPressed: (){},
                    child: Text('Peter Babbage'),)

                ],
              ),
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('Inventor of C'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){rightans();},
                      child: Text('Dennis Richie')),
                  SizedBox(width: 50,),
                  RaisedButton(onPressed: (){},
                    child: Text('John Richhi'),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('Inventor of c++'),
              ),
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(onPressed: (){rightans();},
                        child: Text('Bjarne Stroustrup')),
                    SizedBox(width: 50,),
                    RaisedButton(onPressed: (){},
                      child: Text('Jackson Stroustrup'),)
                  ]
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                color: Colors.pink,
                child: Text('Score',
                  style: TextStyle( fontSize: 20

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10,40,10),
                color: Colors.pink,
                child: Text('$count'),
              )//here
            ]

        )
    );
  }
}
class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int count=0;
  void rightans(){
    setState(() {
      ++count;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[300],
        appBar: AppBar(
          title: Text('Medium Quiz'),
        ),
        body: Column(
            children:<Widget> [
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('First Robot Having Citizenship'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){},
                      child: Text('Emily')),
                  SizedBox(width: 50,),
                  RaisedButton(onPressed: (){rightans();},
                    child: Text('Sophia'),)

                ],
              ),
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('First Lady Coder'),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){rightans();},
                      child: Text('Ada Lovelace')),
                  SizedBox(width: 50,),
                  RaisedButton(onPressed: (){},
                    child: Text('Olivia Lovelace'),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                color: Colors.grey,
                padding:  EdgeInsets.all(20),
                child: Text('Trojans refers to'),
              ),
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(onPressed: (){},
                        child: Text('Virus')),
                    SizedBox(width: 50,),
                    RaisedButton(onPressed: (){rightans();},
                      child: Text('Malware'),)
                  ]
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                color: Colors.pink,
                child: Text('Score',
                  style: TextStyle( fontSize: 20

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10,40,10),
                color: Colors.pink,
                child: Text('$count'),
              )//here
            ]

        )
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int count=0;
  void rightans(){
    setState(() {
      ++count;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('Hard Quiz'),
      ),
      body: Column(
          children:<Widget> [
            SizedBox(height: 40,),
            Container(
              color: Colors.grey,
              padding:  EdgeInsets.all(20),
              child: Text('Father of Indian Supercomputing'),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(onPressed: (){rightans();},
                    child: Text('Vijay Bhatkar')),
                SizedBox(width: 50,),
                RaisedButton(onPressed: (){},
                  child: Text('Ajay Bhatkar'),)

              ],
            ),
            SizedBox(height: 40,),
            Container(
              color: Colors.grey,
              padding:  EdgeInsets.all(20),
              child: Text('InterNet was  first implemented in:'),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(onPressed: (){rightans();},
                    child: Text('1960s')),
                SizedBox(width: 50,),
                RaisedButton(onPressed: (){},
                  child: Text('1970s'),
                )
              ],
            ),
            SizedBox(height: 40,),
            Container(
              color: Colors.grey,
              padding:  EdgeInsets.all(20),
              child: Text('Protocal used to receive e-mail is'),
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){},
                      child: Text('POP4')),
                  SizedBox(width: 50,),
                  RaisedButton(onPressed: (){rightans();},
                    child: Text('POP3'),)
                ]
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              color: Colors.pink,
              child: Text('Score',
                style: TextStyle( fontSize: 20

                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10,40,10),
              color: Colors.pink,
              child: Text('$count'),
            )//here
          ]

      ),

    );
  }
}
