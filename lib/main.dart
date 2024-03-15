import 'package:flutter/material.dart';

//void main() {
  //runApp(const MyApp());
//}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rutas Ancestrales'),),
      body: const RoutesList(),
      drawer: Drawer(
        child: ListView(
          children: const[
            DrawerHeader(child: Text('-Menu Ancestral-')),
            ListTile(title: Text('Inicio')),
            ListTile(title: Text('Ancestral Routes')),
            ListTile(title: Text('Ver mas')),
          ],
        )
      ),
    );
  }
}
//-----------------------------------------------------------------
class RoutesList extends StatelessWidget{
  const RoutesList({super.key});

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap:() {},
          child: Card(
            elevation: 3,
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/routes.jpg',
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Title Route #',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Description Ancestral route'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}