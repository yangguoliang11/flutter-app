import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/page/test_scaffold_page.dart';


class TestWidgetPage  extends StatefulWidget{
  @override

  _TestScaffoldPageState createState()=>_TestScaffoldPageState();


}

class _TestScaffoldPageState extends State<TestWidgetPage> {

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
        title:Text("组件测试1222223"),
      ),

      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return TestScaffoldPage();
            }));
          },
          child: Center(
            child: Text("主要内容111111111111"),
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