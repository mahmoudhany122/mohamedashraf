import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatUser extends StatelessWidget {
  ChatUser({super.key});
  List <String>images=[
    "https://c.pxhere.com/photos/a6/37/portrait_mamiya_film_kodak_medium_format_portra_k_z_pform_tum-192094.jpg!d",
    "https://th.bing.com/th/id/OIP.ZV695BH25Nlhz_inrlHWfAAAAA?w=474&h=474&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.7Ot6KVSPN4OCHo3kEfVMuQHaHa?w=800&h=800&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.0YEFEUt_Tnr1ahlO62sptQHaJ4?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.HNUwPtMHzpJy8diUty7aCwHaHa?w=592&h=592&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.0YEFEUt_Tnr1ahlO62sptQHaJ4?rs=1&pid=ImgDetMain",
  ];
  List<String> Names= [
    "ALi Ramadan",
    "Mohamed Rawy",
    "Shady Essam",
    "Ahmed hegazy",
    "Ramadan mia",
    "Ramadan mia",

  ];
  List<String> Messages= [
    "Thank you for the answer!!!",
    "Already expected  result...",
    "I’ll be waiting",
    "Please check the audio",
    "Thank you for the answer!!!",
    "Thank you for the answer!!!",

  ];
  List<String> Times= [
    "Today, 2:00PM",
    "Today, 2:00PM",
    "Today, 1:30PM",
    "Today, 1:15PM",
    "Today, 1:00PM",
    "Today, 1:15PM",

  ];
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
          "Chats", // Update the title based on selected tab
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 60,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("chats",
                      style: TextStyle(
                          fontSize: 25,
                        letterSpacing: 2,
                      )),
                   Spacer(),
                   Icon(Icons.search,

                   ),
                  ],
                ),
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
                              height: 60,
                              fit: BoxFit.fill,
                              width: 60,
                              errorBuilder: (context, error, stackTrace) {
                                return const SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width:10),
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
                                      fontSize: 17,
                                    ),
                                  ),
                                ),

                                Text(
                                  Messages[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width:20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text(
                                  Times[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
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
