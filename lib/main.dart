import 'package:channabsheet/homepage.dart';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

const _credentials =  r'''
{
  "type": "service_account",
  "project_id": "flutter-gsheets-326110",
  "private_key_id": "0080d3767e341e0fbb365bb1d3086b687fd3d884",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDDx1VadDUY8KbN\nJ44H1dHri2+q62k/Relmjo5qWcPrVq4mA0UCJ7Gs4Zoh2CQLLQAMh5uXu4FOu8bt\nZCrBh7awooVHncw1aUusbd4cuYz1CU8eGLp9LX8H/bQplozLQXe6QU6nb4J2m3pC\nX5oekqGFiRFl9UPwa+huCeVZ073wPCmlkw4kxynVZG9ObhWikNKsZGlX904YC/cv\nnnHAPGV1xVIzJwP4ULroDJDwwwWvX4VtBkRV/v/6fbyBG3Cg6wyBKF1YjVwB18Rl\n5fgORZ9gHYpemwRC/rEUIL1netUsxfUu7zd7MsHF/mWKsc5eyk52OdjXH+yK6yNh\n8fcGT0pjAgMBAAECggEAKW5MnMjM18tNsUq2nufb9bnbVtNcwXwdCYwPjWgTswDz\n961ndC5MRmazxIfGEOtkAELOZYzTr4LDdUdmWPBMdBLgm6hEJ+Vxkzro7zFBKDXh\nHWBkTstK/7jr4IUwpG7lVHAvofVSKaF7fQJYTjH/po+8M9R0nTNoy6iidaD+qBDk\nigf0Ora0bcqzNut9QEs8jMrR0MH4hRVUNDe7jrFm+U4CDP4K8ngHGE2Qjqwisw22\nNepqSVi+7GRamzpikVHU660mYhxDFqFfpY5VNmSPuP4pRfs2TJhf5nY4mr6Inaxg\nx+ZFnbs9TEsaYfx/wg7hvlQxbIIZOsXOMSva6xfkUQKBgQDg9Imd8R2VsWz8iXH8\nI0fCuK6JbqytrZEIvS7AuLJSNC9aPjXJR129KO4REHDfq2y04wgzFc9ppf+xMCNC\nC9uHMIxr8Z+9hEH89dMgHVlC1p/SzHwWCJvysGy+xErztPeptpNVfiXNtsxFQLEc\nSFWjxAQNyM60Fvg9ijM5fRuGqQKBgQDezAOVCFK/YSKth5j0yZJTo3b+d8H0jGja\n9pmPNKvEnDeQyuklRR2QfCiBrkknAjlpya5SvuJL+him7bf4Bku1kwVzRVJqvDAD\nOdfWEDujaD/lFi6UAb4ov/42/d7qV7mmX3BmJpprEcqBp9j6UuB3un/Hdkiyk4fS\nNBLC8fnMKwKBgBjRIXV5KihfgISDrT2BruL+eNLUkNxAL6XlKQk91v5Wn3q3Ljvc\nUa0SnODpDWq/gKib+0WXfGBNXd3wT5Nzt248nuExsMu5kYYUoIwEcNp8zvj0ciQE\nIyAs8nJBOXuVVVU1vR9LYWRGbFafgmp6WGhOsZvLsXIQrqYrXudSs/yxAoGBALB5\nevDmedzbjQNU38QtkfksBspDg984BKpEIJg9ST1f2+eVwhziZSuYHOGzcoAyk9WG\nic1DI664uCQpMcqE+h0mCnAm3cRrscAsZhlKHGMv5USJUHWt97kBctSOPK70s7nj\n6P0Q4Mmkevo+QHDviptrn2EYATdqAnBvDNlbn9inAoGBAKpz/arL7odoK/WjDQ+R\nRAwcKzPwXupjVKHpHIByXA7wcSFd8XVAGf9g51ny6froROmHZ/2TANjELXO4HcOe\njRNTmFMHaMMlqIN/wzsxETtp3p7E5wsVHjyz1+VU+pQjI5Rs3Ym913XCNjJOjXW1\n8vSp+VEiuTkIaVp11Si3Rtxn\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-gsheets@flutter-gsheets-326110.iam.gserviceaccount.com",
  "client_id": "104135449320609793625",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-gsheets%40flutter-gsheets-326110.iam.gserviceaccount.com"
}

''';
const _spreadsheetId = '1cQVnxQ92lXntuOIw96a9AeD3xyrnewvbXwTGJpSetY8';


void main() async {

  final gsheets = GSheets(_credentials);
  final ss = await gsheets.spreadsheet(_spreadsheetId);
  
  var sheet = ss.worksheetByTitle("worksheet1");

  await sheet!.values.insertValue('Koko', column: 1, row: 1);


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}





// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
