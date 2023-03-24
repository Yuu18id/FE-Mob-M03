import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const Center(child: MyHomePage(title: 'Todos')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      WidgetSpan(child: Icon(Icons.list_alt)),
                      TextSpan(
                        text: 'Kegiatan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ])),
                    Container(
                      width: 230,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Judul Kegiatan'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(child: Icon(Icons.sort)),
                        TextSpan(
                          text: 'Keterangan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ])),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                width: 355,
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(40),
                      border: OutlineInputBorder(),
                      labelText: 'Tambah Keterangan'),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 55),
                      child: RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(child: Icon(Icons.calendar_month)),
                        TextSpan(
                          text: 'Tanggal Mulai',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ])),
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      WidgetSpan(child: Icon(Icons.calendar_month_outlined)),
                      TextSpan(
                        text: 'Tanggal Selesai',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ])),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '20-03-2022'),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '20-03-2022'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 180,
                        child: OutlinedButton(
                          child: const Text('Batal'),
                          onPressed: () {},
                        )),
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                        width: 180,
                        child: ElevatedButton(
                          child: const Text('Simpan'),
                          onPressed: () {},
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
