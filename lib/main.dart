import 'package:flutter/material.dart';
import 'package:listview/components/Contato.dart';
import 'components/Contato.dart';

List<Contato> contatos = [
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day"),
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day"),
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day"),
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day"),
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day"),
  Contato("Gabriel", "gabriel@gabriel"),
  Contato("Vini", "vini@vini"),
  Contato("Day", "day@day")
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget{
  const ListaPage({super.key});
  
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("ListView builder"),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context,int index){
        return ListTile(
          leading: CircleAvatar(child: Text(contatos[index].nome[0])),
          title: Text(contatos[index].nome),
          subtitle: Text(contatos[index].email),
        );
      }
      ),
    );
  }
}