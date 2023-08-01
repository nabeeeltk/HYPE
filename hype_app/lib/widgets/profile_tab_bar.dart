import 'package:flutter/material.dart';

class profilTabBarView extends StatelessWidget {
  const profilTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                           
                          ),
                          child:const  Align(
                            alignment: Alignment.center,
                            child: Text("Post"),
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
                            child: Text("Shop"),
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
                            child: Text("Inbox"),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          
          ],
        ));
  }
}