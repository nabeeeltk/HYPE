import 'package:flutter/material.dart';



class DealsPage extends StatefulWidget {
  @override
  _DealsPageState createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Replace 3 with the number of tabs you want
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Tab Bar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs:const  [
            Tab(text: 'Post'),
            Tab(text: 'Shop'),
            Tab(text: 'Inbox'),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children:  [
           Container(),
          Container(),
          Container(),
       
      
        
          ],
        ),
    );
  }
}
