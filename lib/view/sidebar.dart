import 'package:flutter/material.dart';
import 'package:gymapp/view/Loginpage.dart';
import 'package:gymapp/view/mappage.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: const Color(0xFFD4ECDD),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SafeArea(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white.withOpacity(0.6),
                              width: 2,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            InkWell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/login.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Ankit Saini",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                const Text(
                                  'as.ankitsaini406@gmail.com',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.home_filled,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.person_rounded,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.favorite,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Favorite",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MapPage(),
                            ),
                          );
                        },
                        leading: const Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Map",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "History",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Shope",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Setting",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Loginpage(),
                            ),
                          );
                        },
                        leading: const Icon(
                          Icons.exit_to_app,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Sign Out",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
