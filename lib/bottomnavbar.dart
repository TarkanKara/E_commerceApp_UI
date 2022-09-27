import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: changepage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xffFFFFFF),
        iconSize: 40,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
          changepage();
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    changepage();
                  },
                  icon: Image.asset("assets/images/Home.png"),
                ),
                Text("Home"),
              ],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    changepage();
                  },
                  icon: Image.asset("assets/images/Heart.png"),
                ),
                Text("Wishlist"),
              ],
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                    changepage();
                  },
                  icon: Image.asset("assets/images/Paper.png"),
                ),
                Text("History"),
              ],
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                    changepage();
                  },
                  icon: Image.asset("assets/images/Profile.png"),
                ),
                Text("Account"),
              ],
            ),
            label: "Account",
          )
        ],
      ),
    );
  }

  Widget changepage() {
    switch (_currentIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return HomePage();
        break;
      case 2:
        return HomePage();
        break;
      case 3:
        return HomePage();
        break;
      default:
        return Container();
    }
  }
}
