import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/page/test_widget_page.dart';


class TestScaffoldPage  extends StatefulWidget{
  @override

  _TestScaffoldPageState createState()=>_TestScaffoldPageState();


}

class _TestScaffoldPageState extends State<TestScaffoldPage> {

  @override

  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("组件测试123"),
      ),

      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return TestWidgetPage();
            }));
          },
          child: Center(
            child: Text("主要内容22222222222"),
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "increment",
        child: Icon(Icons.add),
      ),

      drawer: Drawer(
        child: Text("侧边栏"),
      ),

      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title:Text("首页")),
        BottomNavigationBarItem(icon: Icon(Icons.headset),title:Text("音乐")),

      ],),

      resizeToAvoidBottomPadding: true,




    );

   }

}