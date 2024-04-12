import 'package:flutter/material.dart';

import 'details.dart';

class Appointment extends StatelessWidget {
   Appointment({super.key});
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                      "Upcoming Appointments",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list_alt,
                  color: Colors.cyan),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount:images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child:  Image.network(
                              images[index],
                              height: 95,
                              fit: BoxFit.fill,
                              width: 95,
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
                          const SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    Names[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border:Border.all(
                                          color: Colors.grey,
                                        )
                                      ),

                                      child: TextButton(
                                          onPressed: (){},
                                          child:Text(
                                              "seculde me",
                                             style: TextStyle(
                                               color: Colors.grey,
                                               fontSize: 15,
                                             ),
                                          ),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 40,
                                      color: Colors.cyan,

                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDetails(),));
                                        },
                                        child:Text(
                                          "ViewDetails",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 15),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
