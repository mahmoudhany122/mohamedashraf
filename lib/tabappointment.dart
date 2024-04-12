import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appointment.dart';
import 'calender.dart';

class MyTabbedScreen extends StatefulWidget {
  @override
  State<MyTabbedScreen> createState() => _MyTabbedScreenState();
}

class _MyTabbedScreenState extends State<MyTabbedScreen> {
  List<String> screensName = [' Upcoming','Schedule'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.list,
          color: Colors.cyan,

        ),
        title: Text(
          screensName[_selectedIndex], // Update the title based on selected tab
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 30, // تحديد حجم الدائرة
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.M0FZeVMZa_n7zHGbAcJF1wHaFj?rs=1&pid=ImgDetMain",
              ),
              // يمكنك تحديد تناسب الصورة هنا
              backgroundColor: Colors.transparent, // لجعل خلفية الدائرة شفافة
            ),
          ),


        ],
      ),
      body: DefaultTabController(
        length: screensName.length,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(

              isScrollable: true,
              physics: BouncingScrollPhysics(),
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              indicatorColor: Colors.cyan,
              padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
              indicator: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 10,
                    offset: const Offset(1, 0),
                  )
                ],

              ),

              labelColor: Colors.white,
              unselectedLabelColor: Colors.cyan,

              tabs: [
                for (int i = 0; i < screensName.length; i++)
                  Tab(
                    child: Container(
                      width: 120,

                      alignment: Alignment.center,
                      child: Text('${screensName[i]}'),
                    ),
                  ),
              ],
              onTap: (index) {
                // Set the selected index and update the AppBar title
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Appointment(),
                  CalendarPage(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
