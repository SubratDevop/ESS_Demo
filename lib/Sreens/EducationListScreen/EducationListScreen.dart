import 'package:flutter/material.dart';

import '../../ReportScreen/ReportexceptionScreen.dart';

class EducationListScreen extends StatefulWidget {
  const EducationListScreen({super.key});

  @override
  State<EducationListScreen> createState() => _EducationListScreenState();
}

class _EducationListScreenState extends State<EducationListScreen> {
  List Students = [
    "Aaradhya",
    "Alisha ",
    "Avni ",
    "Ishita ",
    "Jeevika ",
    "Subrat",
    "Shayal",
    "Amrit",
    "Pabitra",
    "Amrita",
    "Uma",
    "Nibedita",
    "Biswajit",
    "Tofan",
    "Rahul",
    "Sipti",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          color: Colors.white,
          child: TextFormField(
            decoration: const InputDecoration(
              // border: InputBorder.none,
              hintText: "  Search by Name or Id",
              hintStyle: TextStyle(color: Colors.black54),
              suffixIcon: Icon(
                Icons.search,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        
        
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bar_chart_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: Students.length,
                itemBuilder: ((context, index) {
                  return Card(
                    // child: Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "APSWREIS ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                  "Code: 12345678900012345 Primary education"),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(Students[index].toString()),
                            ],
                          ),
                          IconButton(
                            alignment: const Alignment(0, 0),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                        ],
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
