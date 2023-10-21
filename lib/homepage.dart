import 'package:flutter/material.dart';
import 'package:tripapp_animations/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 4;
  void _onScroll() {
    print('hello');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/two.jpg',
            title: 'Yomesmite National Park',
            description:
                'Yosemite National Park is in California Sierra Nevada mountains. Its famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. ',
          ),
          makePage(
            page: 2,
            image: 'assets/images/three.jpg',
            title: 'Golden Gate Bridge',
            description:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean. adnafdf nausinufg nuaudfubiba auifak.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/four.jpg',
            title: 'Sedona',
            description:
                'Sedona is an Arizona desert town near Flagstaff that’s surrounded by red-rock buttes, steep canyon walls and pine forests. anfbfia nurbig nuivbbbvfi uifgbri nionei niubgniin.',
          ),
          makePage(
            page: 4,
            image: 'assets/images/one.jpg',
            title: 'Savannah',
            description:
                ' Savannah, a coastal Georgia city, is separated from South Carolina by the Savannah River. It’s known for manicured parks, horse-drawn carriages and antebellum architecture.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      page.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '/' + totalPage.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      2,
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FadeAnimation(
                      0.8,
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          const Text(
                            '4.0',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          const Text(
                            '(2300)',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1,
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 17,
                              height: 1.7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FadeAnimation(
                      0.5,
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
