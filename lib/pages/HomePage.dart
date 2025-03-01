import 'package:e_commerce_ui/components/bottom_nav_bar.dart';
import 'package:e_commerce_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // navigate bottom bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

    // pages to display
    final List<Widget> _pages = [
      const ShopPage(),
      const CartPage(),
    ];


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  },

                  icon: const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Icon(
                        Icons.menu,
                        color: Colors.black
                    ),
                  )

              ),
          )
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [

                // logo
                DrawerHeader(child: Image.asset('assets/images/nike.png',
                  color: Colors.white,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text("About", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],

            ),
            const Padding(
              padding: EdgeInsets.only(left:25.0, bottom: 15),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text("Logout", style: TextStyle(color: Colors.white)),
              ),
            )
          ],),

        ),
        body: _pages[_selectedIndex],
      );
    }

}