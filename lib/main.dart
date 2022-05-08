import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final String _url = " https://owlbot.info/api/v4/dictionary/owl -s | json_pp";
  late final String  _token = " 476d32ba6375bb7d6d7581bb6efb3b8fda318f13";
  
 final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dictionary"),
        
        bottom:  PreferredSize( 
          preferredSize: const Size.fromHeight(48.0),
        
          child: Row( 
            children: <Widget>[ 
              Expanded(
                child: Container(
                  
                  margin:const  EdgeInsets.only(left:12.0,bottom: 8.0),
                  decoration: BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.circular( 24.0),
                  ),
                  child: TextFormField( 
                    onChanged: (String text){

                    },
                    controller: _controller,
                    decoration:const  InputDecoration( 
                      hintText: "Search for a Word",
                      contentPadding: EdgeInsets.only(left:24.0),
                      border: InputBorder.none,
                    
                    ),
                  ),
                ),
                
              ),
              IconButton(onPressed: (){


              },
               icon: const Icon(
                 Icons.search,
                 color: Colors.white,
                 ),),
              
            ],  
                  
          ),
          
        ),  
      ),
      
      body:Container(


      ),
    );
  }
}
