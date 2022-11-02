import 'package:ess_demo/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         key: _key, 
         drawerEnableOpenDragGesture: false,
        drawer: Drawer(),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
           backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        
        title: const Text(
          "Sai International School",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {});
             _key.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 25,
          ),
        ),
      
      
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundColor: Colors.transparent,
                  radius: 25.0,
                  child: ClipRRect(
                    child: Image.asset('Assets/images/girl.png'),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

                // CircleAvatar(
                //   radius: 25.0,
                //   backgroundImage: NetworkImage(
                //       'https://www.seekpng.com/png/detail/72-729869_circled-user-female-skin-type-4-icon-profile.png'),
                //   backgroundColor: Colors.transparent,
                // )

                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Punam Padhi",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Student ",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical : 15.0,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 170,
                            width: 170,

                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.list_alt_outlined,
                                        color: Colors.blue.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Scans",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "180",
                                    style: TextStyle(
                                        color: Colors.green.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.list_alt_outlined,
                                        color: Colors.green.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Queue",
                                          style: TextStyle(
                                              color: Colors.green.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                         height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.list_alt_outlined,
                                        color: Colors.blue.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Attendance",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                        Container(
                              height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.yellow.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.message,
                                        color: Colors.yellow.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text("Messages",
                                          style: TextStyle(
                                              color: Colors.yellow.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                           height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "850",
                                    style: TextStyle(
                                        color: Colors.lightGreen.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.people_alt,
                                        color: Colors.lightGreen.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Students",
                                          style: TextStyle(
                                              color:
                                                  Colors.lightGreen.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        
                        Container(
                           height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.lime.shade100,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.lime.shade900,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.people_alt,
                                        color: Colors.lime.shade900,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Survey",
                                          style: TextStyle(
                                              color: Colors.lime.shade900,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
