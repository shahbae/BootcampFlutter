import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/accountScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/drawerScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/searchScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ScreenHome(),
    SearchScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    print("Item tapped: $index");

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5C00),
        title: const Text(
          "GolekKerjo",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: DrawerScreen(),
      body: _widgetOptions.elementAt(_selectedIndex),
      // body: ScreenHome(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFF5C00),
        onTap: _onItemTapped,
      ),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wellcome, ',
              style: TextStyle(
                fontSize: 48.0,
                color: Color(0xFFFF5C00),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Shahbae ',
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Popular Company',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 160.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Jobs();
                },
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Recent Jobs',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 160.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Jobs();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 270.0,
        height: 160,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/airbnb.png',
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      'Airbnb',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Text("FULLTIME"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Product Designer",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("8k/mo"),
          ],
        ),
      ),
    );
  }
}
