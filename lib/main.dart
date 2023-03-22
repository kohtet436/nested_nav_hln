import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return const DefaultTabController(
  length: 2,
  child: Scaffold(

      bottomNavigationBar: const TabBar(
automaticIndicatorColorAdjustment: false,
        labelColor: Colors.red,
        // indicatorColor: Colors.red,
        tabs: [
          Tab(icon: Icon(Icons.home,color: Colors.blue,)),
          Tab(icon: Icon(Icons.person,color: Colors.blue,)),
        ],
      ),
    body: TabBarView(
      children: [
       
            const HomeNavigator(),
            ProfileNavigator(),
          ],
        ),
      ),
 
);
  
  }
}

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return Home1();
                case '/home2':
              return Home2();
                  
              }
              return Home1();
              
            });
      },
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Home 1"),
        ),
        
        ElevatedButton(
          child: const Text("Go to Home 2"),
          onPressed: () => Navigator.pushNamed(context, '/home2'),
        ),
      ],
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Home 2"),
        )
      ],
    );
  }
}

class ProfileNavigator extends StatelessWidget {
  const ProfileNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const Profile1();
                case '/profile2':
                  return const Profile2();
              }return const Profile1();
            
            });
      },
    );
  }
}

class Profile1 extends StatelessWidget {
  const Profile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Profile 1"),
        ),
        ElevatedButton(
          child: const Text("Go to Profile 2"),
          onPressed: () => Navigator.pushNamed(context, '/profile2'),
        ),
      ],
    );
  }
}

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Profile 2"),
        ),
      ],
    );
  }
}