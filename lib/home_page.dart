import 'package:country/api_service.dart';
import 'package:country/users_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UsersModel> users=[];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()async{
                users = await ApiService().signUp();
                setState(() {
                });
              }, 
              child: const Text("Get Datas",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),),),
              const SizedBox(height: 16,),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text("Name:",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                                const SizedBox(width: 4,),
                                Text(users[index].name,style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Email:",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                                const SizedBox(width: 4,),
                                Text(users[index].email,style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Website:",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                                const SizedBox(width: 4,),
                                Text(users[index].website,style: const TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Phone:",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                                const SizedBox(width: 4,),
                                Text(users[index].phone,style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                },),
              )
          ],
        ),
      ),
    );
  }
}