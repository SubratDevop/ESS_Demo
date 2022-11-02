 import 'package:flutter/material.dart';

class ReportexceptionScreen extends StatelessWidget {
   const ReportexceptionScreen({Key? key}) : super(key: key);
 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Reports & Exception"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "School Code",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: "i.e S0901930021"),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
decoration: BoxDecoration(
border: Border.all(color: Colors.orange)
),                  width: 50,
                height: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.orange,
                      )),
                ),
               

              ],
              
            ),
             SizedBox(height: 20,),
                Text("Type Of ownership", style: TextStyle(color: Colors.grey,fontSize: 15),),
             SizedBox(height: 10,),
             Row(
              children: [
                Expanded(child: Text("Select type Of ownership", style: TextStyle(color: Colors.grey,fontSize: 23),)),
                SizedBox(width: 20,child: Icon(Icons.arrow_drop_down,color: Colors.grey,size: 30,),)
              ],
             ),
             SizedBox(height: 30,),
                Text("Description", style: TextStyle(color: Colors.black,fontSize: 25),),
             SizedBox(height: 10,),
             Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400)
              ),
             ),
             SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                  onPressed: (){}, child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ))






          ],
        ),
      ),
    );
  }

}