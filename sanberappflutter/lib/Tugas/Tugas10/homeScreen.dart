import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 58, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Teks "Welcome"
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search jobs...',
                  prefixIcon: Icon(Icons.search),
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
