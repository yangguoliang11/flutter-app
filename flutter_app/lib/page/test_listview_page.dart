import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TestListviewPage  extends StatefulWidget{
  @override

  _TestListviewPage createState()=>_TestListviewPage();


}

class _TestListviewPage extends State<TestListviewPage> {

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
        title:Text("项目管理系统"),
      ),

      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context){
              //return TestWidgetPage();
            }));
          },
          child: Center(
            child: Text("项目管理系统"),
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