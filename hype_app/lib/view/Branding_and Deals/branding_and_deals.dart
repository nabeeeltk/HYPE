import 'package:flutter/material.dart';



class BrandingDealsPage extends StatefulWidget {
  @override
  _BrandingDealsPageState createState() => _BrandingDealsPageState();
}

class _BrandingDealsPageState extends State<BrandingDealsPage> with SingleTickerProviderStateMixin {
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
           Container()
      
        ],
      ),
    );
  }
}
