import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.deepOrange, Colors.pinkAccent]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Shubham",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "1200",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.pinkAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "21.2K",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.pinkAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Follow",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "1200",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.pinkAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Info:",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('My name is Natasha and I am  a freelance mobile app developper.\n'
                      'Having Experiece in Flutter and Android',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.pink,Colors.pinkAccent]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("Contact me",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}


class RedditHome extends StatelessWidget {

  final List<Widget> _posts = <Widget>[];

  Widget renderAppBar() {
    return AppBar(
     
      elevation: 0.0,
      backgroundColor: Colors.black38,
      bottom: const TabBar(
        tabs: [
          Tab(text: "Home",),
          Tab(text: "Popular"),
           Tab(text: "Settings"),
        ],
      ),
      title: Text(
        "Reddit",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget renderPostSorter() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(8.0),
      height: 44.0,
    );
  }

  Widget renderPost() {
    return Container(
      color: Colors.black38,
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
              child: Text("r/loremispum  ●  2h  ●  i.redd.it", style: TextStyle(color: Colors.grey[600], fontSize: 13.0),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text("Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet", style: TextStyle(color: Colors.grey[400], fontSize: 16.0),),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                      child: Image.asset("assets/lorem_ispum.jpg", width: 64.0, height: 64.0,),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text("Upvotes", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Comments", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Share", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),),
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child: Divider(color: Colors.black, height: 6.0,),
            ),
          ]
      )
    );
  }

  Widget renderPosts() {
    for(int i = 0; i < 20; i++) {
      if(i == 0) _posts.add(renderPostSorter());
      _posts.add(renderPost());
    }
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _posts[index],
      itemCount: 20,
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(       
      
      home: DefaultTabController(
      
        length: 3,
        child: Scaffold(

          backgroundColor: Colors.grey[900],
           drawer: new Drawer(),
          appBar: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: renderAppBar(),
          
  ),

          body: TabBarView(
            
            children: <Widget>[
              Container(
                child: renderPosts(),
                 
              ),
               Container(
                child: renderPosts()
              ),
               Container(
                child: MyStackWidget()
              )
            ],
          )
        )
      )
    );
  }
}


class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle_sharp,
                    color: Colors.grey[400],
                    size: 50.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'example@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                 
                ],
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.grey[800],
                height: 10.0,
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.qr_code,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  new FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ProfileApp()),
            );
          },
          child: new Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
        )
                  
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.diamond_rounded,
                    color: Colors.purple[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Splitwise Pro',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'Premium',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Email Settings',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.doorbell_outlined,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Device and push notification settings',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Passcode',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'View Options',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Rate Reddit',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.question_mark,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Contact Reddit support',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Divider(
                color: Colors.grey[800],
                height: 10.0,
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.logout,
                    color: Colors.green[400],
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


