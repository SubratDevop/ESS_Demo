import 'package:flutter/material.dart';

import '../../ReportScreen/ReportexceptionScreen.dart';

class Observation_sollution extends StatefulWidget {
  const Observation_sollution({super.key});

  @override
  State<Observation_sollution> createState() => _Observation_sollutionState();
}

class _Observation_sollutionState extends State<Observation_sollution> {
  List<String> Schoollist = [
    "Alok English Medium School",
    "Ambedkar Public School",
    "ODM Global School",
    "Sai International School",
    "DAV Public School, Unit VIII",
    "DAV Public School, Chandrashekarpur",
    "Sainik School",
    "Ruchika High School",
    "Demonstration Multipurpose School",
    "DAV Public School, Pokhariput",
    "Mother’s Public School",
    "DAV Public School, Kalinga Nagar",
    "Buxi Jagabandhu English Medium School",
    "St. Joseph’s High School",
    "ODM Global School",
    "Sai International School",
    "DAV Public School, Unit VIII",
    "DAV Public School, Chandrashekarpur",
    "Sainik School",
    "Ruchika High School",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Observation Solution"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.network_check_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // showSearch(context: context, delegate: ),
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Schoollist.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ReportexceptionScreen()));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text("MH01- Mantra4Change APSWREIS "),
                            Text(Schoollist[index].toString()),
                            IconButton(
                              alignment: Alignment(0, 0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
