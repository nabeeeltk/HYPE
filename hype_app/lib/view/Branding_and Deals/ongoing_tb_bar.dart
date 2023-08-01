import 'package:flutter/material.dart';
import 'package:hype_app/view/Branding_and%20Deals/Pending_widget.dart';
import 'package:hype_app/view/Branding_and%20Deals/aproved_widget.dart';

class OngoingWidget extends StatelessWidget {
  const OngoingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 55,
                color: Colors.black,
                child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(color: Colors.black12,width: 1)
                          ),
                          child:const  Align(
                            alignment: Alignment.center,
                            child: Text("Pending"),
                          ),
                        ),
                      ),
                       Tab(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(color: Colors.black12,width: 1)
                          ),
                          child:const  Align(
                            alignment: Alignment.center,
                            child: Text("Approved"),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
           const  Expanded(
              child:TabBarView(children: [
                PendingWidget(),
               ApprovedWidget()
              ]) )
          ],
        ));
  }
}
