import 'package:file_manager_app/Widgets/AppColors.dart';
import 'package:file_manager_app/Widgets/AppText.dart';
import 'package:file_manager_app/Widgets/AppText_Large.dart';
import 'package:file_manager_app/screens/Donut_Chart.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(121212),
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.search,
                color: Appcolors.textLarge,
                size: 30,
              ))
        ],
        iconTheme: IconThemeData(color: Appcolors.textLarge, size: 30),
        backgroundColor: Color(121212),
        title: Apptext(
          text: 'File Manager',
          size: 24,
          color: Appcolors.textLarge,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Appcolors.containerColors,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                        top: BorderSide(
                      color: Appcolors.borderColors,
                    )),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    height: 160,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        // Button pressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          backgroundColor:
                              const Color.fromARGB(255, 37, 37, 37)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 50),
                                  child: Icon(
                                    Icons.storage_rounded,
                                    color: Appcolors.borderColors,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Apptext(
                                  text: 'Internal',
                                  size: 21,
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 22),
                                    child:
                                        ApptextLarge(text: '245 GB', size: 14))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Appcolors.containerColors,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                        top: BorderSide(
                      color: Appcolors.borderColor2,
                    )),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    height: 160,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        // Button pressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          backgroundColor:
                              const Color.fromARGB(255, 37, 37, 37)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 50),
                                  child: Icon(
                                    Icons.storage_rounded,
                                    color: Appcolors.borderColor2,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Apptext(
                                  text: 'Enternal',
                                  size: 19,
                                ),
                                 SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 22),
                                  child: ApptextLarge(text: '240 GB', size: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 352,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 37, 37, 37),
                  border: Border(
                    top: BorderSide(
                      color: Appcolors.borderColors,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 100,
                    width: 100,
                    child: CustomPaint(
                      painter: DonutChartPainter(percentage: 0.75),
                    ),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Appcolors.borderColors,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Apptext(
                            text: "Phone Memory",
                            size: 13,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: ApptextLarge(text: 'Used 245 GB', size: 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 17),
                        child: ApptextLarge(text: 'Free 245 GB', size: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 115,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Color(0xfffa6c68),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 13),
                              child: Apptext(
                                text: "Memory Card",
                                size: 13,
                              )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: ApptextLarge(text: 'Used 245 GB', size: 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 17),
                        child: ApptextLarge(text: 'Free 245 GB', size: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.only(right: 220),
                child: Apptext(
                  text: 'My Favorites',
                  size: 20,
                )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 105,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Appcolors.containerColors,
                      borderRadius: BorderRadius.circular(20),
                      border: Border(
                          top: BorderSide(
                        color: Appcolors.borderColors,
                      )),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 105,
                      width: 115,
                      child: ElevatedButton(
                        onPressed: () {
                          // Button pressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(255, 37, 37, 37)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Icon(
                                      Icons.video_call_outlined,
                                      color: Appcolors.borderColors,
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Apptext(
                                    text: 'Image',
                                    size: 9,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 1),
                                    child: ApptextLarge(
                                        text: '1225 items', size: 8),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 105,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Appcolors.containerColors,
                      borderRadius: BorderRadius.circular(20),
                      border: Border(
                          top: BorderSide(
                        color: Appcolors.borderColors,
                      )),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 105,
                      width: 115,
                      child: ElevatedButton(
                        onPressed: () {
                          // Button pressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(255, 37, 37, 37)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Icon(
                                      Icons.memory_outlined,
                                      color: Appcolors.borderColors,
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Apptext(
                                    text: 'Image',
                                    size: 9,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 1),
                                    child: ApptextLarge(
                                        text: '1225 items', size: 8),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 105,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Appcolors.containerColors,
                      borderRadius: BorderRadius.circular(20),
                      border: Border(
                          top: BorderSide(
                        color: Appcolors.borderColors,
                      )),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 105,
                      width: 115,
                      child: ElevatedButton(
                        onPressed: () {
                          // Button pressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(255, 37, 37, 37)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Icon(
                                      Icons.data_array_outlined,
                                      color: Appcolors.borderColors,
                                      size: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Apptext(
                                    text: 'Image',
                                    size: 9,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 1),
                                    child: ApptextLarge(
                                        text: '1225 items', size: 8),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 240),
                child: Apptext(
                  text: 'My Folders',
                  size: 20,
                )),
            SizedBox(
              height: 9,
            ),
            // Container(
            //   height: 20, width: 350,
            //   decoration: BoxDecoration(
            //     color: Color.fromARGB(255, 37, 37, 37)
            //   ),
            // ),
            SizedBox(
              height: 65, // Fixed height
              width: 350, // Fixed width
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                       color: Color(0xfffa6c68),
                    )
                  ),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Button press action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 37, 37, 37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // side: BorderSide(
                      //   color:
                      //       Colors.white, 
                      //   width: 2.0, 
                      // ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.document_scanner, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Document',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '2259',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<String>(
                        onSelected: (String result) {
                          // handle menu choice
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                        ],
                        icon: Icon(Icons.more_vert,
                            color: Colors.white), // Popup menu icon
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
             SizedBox(
              height: 65, // Fixed height
              width: 350, // Fixed width
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                       color: Color(0xfffa6c68),
                    )
                  ),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Button press action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 37, 37, 37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // side: BorderSide(
                      //   color:
                      //       Colors.white, 
                      //   width: 2.0, 
                      // ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.document_scanner, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Document Title',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Subtitle here',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<String>(
                        onSelected: (String result) {
                          // handle menu choice
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                        ],
                        icon: Icon(Icons.more_vert,
                            color: Colors.white), // Popup menu icon
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
