import 'dart:js';

import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';main(){
  runApp(const MyApp());

}


class MyApp extends StatelessWidget{
  const MyApp({super .key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(theme: ThemeData(primarySwatch: Colors.cyan) ,
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
  }



class HomeActivity extends StatelessWidget {
  const HomeActivity({super .key});


  MySnackBar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(message))

  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("My app"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 100,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed:(){MySnackBar("i am comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed:(){MySnackBar("i am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed:(){MySnackBar("i am settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed:(){MySnackBar("i am email", context);}, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label:"message"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label:"contacts"),
        ],
        onTap:(int index){
          if(index==0){
            MySnackBar("i am bottom menu", context);
          }
          if(index==1){
            MySnackBar("i am home menu", context);
          }
          if(index==2){
            MySnackBar("i am contact menu", context);
          }
      }
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Muna"),
              accountEmail: Text("info@muna.com"),
              currentAccountPicture:Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png") ,
        )

            ),
            ListTile(leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
              MySnackBar("Home", context);},),


            ListTile(leading: Icon(Icons.contacts),
                title: Text("Contact"),
                onTap: (){
                MySnackBar("contact", context);},),


            ListTile(leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
               MySnackBar("person", context);},
            ),


            ListTile(leading: Icon(Icons.email),
               title: Text("Email"),

            onTap: (){
            MySnackBar("I am Email", context);},),



            ListTile(leading: Icon(Icons.phone),
            title: Text("Phone"),
           onTap: (){
           MySnackBar("I am phone", context);},),


          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Muna"),
                  accountEmail: Text("info@muna.com"),
                  currentAccountPicture:Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png") ,
                )

            ),
            ListTile(leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                MySnackBar("Home", context);},),


            ListTile(leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: (){
                MySnackBar("contact", context);},),


            ListTile(leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                MySnackBar("person", context);},
            ),


            ListTile(leading: Icon(Icons.email),
              title: Text("Email"),

              onTap: (){
                MySnackBar("I am Email", context);},),



            ListTile(leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: (){
                MySnackBar("I am phone", context);},),


          ],
        ),
      ),
      body:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(height: 100,width: 100,child: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png" )),
        Container(height: 100,width: 100,child: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png" )),
        Container(height: 100,width: 100,child: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png" )),
      
      ],)



    );
  }
}