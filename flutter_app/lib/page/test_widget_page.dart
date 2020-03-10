import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class TestWidgetPage  extends StatefulWidget{
  @override

  _TestWidgetPageState createState()=>_TestWidgetPageState();


}

class _TestWidgetPageState extends State<TestWidgetPage> {

  ScrollController _scrollController;

  void getHttp() async {
    try {
      Response response;
      FormData formData = new FormData.fromMap({
        "mobile": "1001",
        "password": "123456",
      });
      response = await Dio().post("http://itemapi.weiyingjia.org/login/login",
      data:formData);
      return print(response);
    } catch (e) {
      return print(e);
    }
  }
  @override

  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      //_scrollController.position.didEndScroll();
    });
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

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20),
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisAlignment: MainAxisAlignment.center,

          mainAxisSize: MainAxisSize.max,

          children: <Widget>[
            _buildRow(context),
            _buildContainer(context),
            _buildClipRRect(context),
            _buildSizedBox(context),
            _buildAspectRatio(context)
          ],
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
        BottomNavigationBarItem(icon: Icon(Icons.person),title:Text("个人中心")),

      ],),

      resizeToAvoidBottomPadding: true,





    );

   }

   _buildRow(BuildContext context){
    return Row(
      children: <Widget>[
        _buildExtended(context),
        _buildIcon(context),
      ],
    );
   }

  _buildExtended(BuildContext context){
    return Expanded(
      child: _buildText(context),
    );
  }

  _buildText(BuildContext context){
    return Text(
     "项目管理系统",
      style: TextStyle(
        color:Colors.amber,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        fontFamily: null,

      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,

    );
  }


  _buildIcon(BuildContext context){
    return Icon(
      Icons.home,
      color: Colors.black12,
      size:32

    );
  }

  _buildContainer(BuildContext context){
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color:Colors.amber,width: 3),
          boxShadow: [
            BoxShadow(color: Colors.black12, offset: Offset(0,5), blurRadius: 4),
          ],
          gradient: null
        ),
       padding: EdgeInsets.all(10),
       margin: EdgeInsets.all(10),
       child: _buildButton(context),
    );
  }

  _buildButton(BuildContext context){
    return FlatButton(
        onPressed: (){
          getHttp();
        },
        child: Text("新建项目"),

    );
  }

  _buildAspectRatio(BuildContext context){
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color:Colors.amberAccent
      ),
    );
  }

  _buildClipRRect(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: _buildImage(context),
    );
  }

  _buildImage(BuildContext context){
    return Image(
      image: new AssetImage("image/1.png"),
      width: null,
      height: null,
      fit:BoxFit.fill

    );
  }

  _buildSizedBox(BuildContext context){
    return SizedBox(height: 10);
  }

}
