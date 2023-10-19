import 'package:flutter/material.dart';
import 'package:routes/screen_two.dart';
import 'package:routes/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('sm graphics',style: TextStyle(color: Colors.white,),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.screenTwo,
                  arguments: {
                'Node' :'js Module',
                    'Flutter' : 'good for apps'
                  }
          );
            // Navigator.push(context,
            // MaterialPageRoute(builder: (context) => ScreenTwo(
            //   name: 'sm graphics',
            //   num: 12,
            // )));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration:const BoxDecoration(
                color: Colors.orange,
              ),
              child: const Center(
                child: Text('screen 1'),
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
