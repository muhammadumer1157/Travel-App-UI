import 'package:flutter/material.dart';
import 'package:travel_app_ui/animations/FadeAnimation.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const FadeAnimation(
                      delay: 1,
                      child: const Text(
                        "What would you like to find?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    FadeAnimation(
                      delay: 1.3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        margin: const EdgeInsets.symmetric(horizontal: 40.0),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: "Search for cities, places ...",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 15.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    delay: 1,
                    child: Text(
                      "Best Destination",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    delay: 1.4,
                    child: SizedBox(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem("assets/images/canada.jpg", "Canada"),
                          makeItem("assets/images/Italy.jpg", "Italy"),
                          makeItem("assets/images/greece.jpg", "Greece"),
                          makeItem("assets/images/united-states.jpg",
                              "United States")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  FadeAnimation(
                    delay: 1.4,
                    child: SizedBox(
                      height: 50.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: const EdgeInsets.only(right: 15.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.blue.withOpacity(0.2)),
                              child: const Icon(
                                Icons.hotel,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: const EdgeInsets.only(right: 15.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.flight,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1.5 / 1,
                            child: Container(
                              margin: const EdgeInsets.only(right: 15.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.event,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    delay: 1,
                    child: Text(
                      "Best Hotels",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FadeAnimation(
                    delay: 1.4,
                    child: SizedBox(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem("assets/images/canada.jpg", "Canada"),
                          makeItem("assets/images/Italy.jpg", "Italy"),
                          makeItem("assets/images/greece.jpg", "Greece"),
                          makeItem("assets/images/united-states.jpg",
                              "United States")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem(String image, String title) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
