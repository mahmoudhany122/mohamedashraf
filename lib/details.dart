import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  PatientDetails({super.key});
  List <String>images=[
    "https://c.pxhere.com/photos/a6/37/portrait_mamiya_film_kodak_medium_format_portra_k_z_pform_tum-192094.jpg!d",
    "https://th.bing.com/th/id/OIP.ZV695BH25Nlhz_inrlHWfAAAAA?w=474&h=474&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.7Ot6KVSPN4OCHo3kEfVMuQHaHa?w=800&h=800&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.0YEFEUt_Tnr1ahlO62sptQHaJ4?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.HNUwPtMHzpJy8diUty7aCwHaHa?w=592&h=592&rs=1&pid=ImgDetMain",
  ];
  List<String> Names= [
    "ALi Ramadan",
    "Mohamed Yasser",
    "Shady Essam",
    "Ahmed hegazy",
    "Ramadan mia",

  ];
  int index = 0;
  String _text1 = 'Patient Logs';
  String _text2 = 'Mesdcine Info';
  String _text3 = 'Reports';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.list,
          color: Colors.cyan,

        ),
        title: Text(
          "PatientDetails", // Update the title based on selected tab
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
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:  Image.network(
                    images[index],
                    height: 120,
                    fit: BoxFit.fill,
                    width: 105,
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        width: 95,
                        height: 95,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 80,),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.call),
                    color: Colors.cyan,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.video_call),
                    color: Colors.cyan,

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.message_rounded),
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Name : ",
                style: TextStyle(
                  fontSize: 15
                )),
                Text("${Names[index]}",
                style: TextStyle(
                  color:Colors.grey,
                  fontSize: 17
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Age : ",
                    style: TextStyle(
                        fontSize: 15
                    )),
                Text("24",
                    style: TextStyle(
                        color:Colors.grey,
                        fontSize: 17
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Gender : ",
                    style: TextStyle(
                        fontSize: 15
                    )),
                Text("Male",
                    style: TextStyle(
                        color:Colors.grey,
                        fontSize: 17
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text("Height : ",
                        style: TextStyle(
                            fontSize: 15
                        )),
                    Text("177",
                        style: TextStyle(
                            color:Colors.grey,
                            fontSize: 17
                        )),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Text("Weight : ",
                        style: TextStyle(
                            fontSize: 15
                        )),
                    Text("90",
                        style: TextStyle(
                            color:Colors.grey,
                            fontSize: 17
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        _text2 ?? '', // Use default value if _text2 is null
                        style: TextStyle(fontSize: 15, color: Colors.cyan),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        _text3 ?? '', // Use default value if _text2 is null
                        style: TextStyle(fontSize: 15, color: Colors.cyan),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        _text1 ?? '', // Use default value if _text2 is null
                        style: TextStyle(fontSize: 15, color: Colors.cyan),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 3,
            ),
            Text(
                "Completed Appointments",
              style: TextStyle(
                fontSize: 20,
                color: Colors.cyan
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              height: 35,
              decoration: BoxDecoration(
               color: Colors.cyan[50]
              ),
              child: Center(
                child: Text(
                  "Meeting on 23 april", // Use default value if _text2 is null
                  style: TextStyle(fontSize: 15, color: Colors.cyan),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.cyan[50]
              ),
              child: Center(
                child: Text(
                  "Meeting on 20 april", // Use default value if _text2 is null
                  style: TextStyle(fontSize: 15, color: Colors.cyan),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.cyan[50]
              ),
              child: Center(
                child: Text(
                  "Meeting on 07 april", // Use default value if _text2 is null
                  style: TextStyle(fontSize: 15, color: Colors.cyan),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: TextButton(
                  onPressed: (){},
                  child:Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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
