import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';
import 'package:sneakershop/pages/cartPage.dart';
import 'package:sneakershop/pages/settingPage.dart';
import 'package:sneakershop/pages/shopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [];

  void navigateBottomNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void removeFromCart(Shoe shoe) {
    setState(() {
      userCart.remove(shoe);
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize _pages list here
    _pages.addAll([
      const MyShopPage(),
      MyCartPage(userCart: userCart, removeFromCartCallback: removeFromCart),
      const SettingPage(),
    ]);
  }
  // final List<Widget> _pages = [
  //   const MyShopPage(),
  //   MyCartPage(userCart: userCart, removeFromCartCallback: removeFromCart),
  //   const SettingPage()
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nikeLogo.png',
                    height: 100,
                    width: 150,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text(
                      'Home',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      'About',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 20),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: BottomNavigationBar(
          selectedItemColor: Colors.grey[100],
          elevation: 0.0,
          currentIndex: _selectedIndex,
          onTap: (index) => navigateBottomNavbar(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
