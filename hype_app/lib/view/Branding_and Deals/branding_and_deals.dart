import 'package:flutter/material.dart';
import 'package:hype_app/widgets/deals.dart';

import '../../widgets/deals_completed_widget.dart';
import '../../widgets/ongoing_tb_bar.dart';



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
        backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,

        title:const  Text('Deals',style: TextStyle(color: Colors.white,fontSize: 25),),
        bottom: TabBar(
          controller: _tabController,
          tabs:const  [
            Tab(text: 'Deals'),
            Tab(text: 'Ongoing'),
            Tab(text: 'Completed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
       const   DealsWidget(),
        const   OngoingWidget(),
        const    DealCompletedPage(),
      
        ],
      ),
    );
  }
}
