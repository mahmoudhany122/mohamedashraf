import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Drugs extends StatelessWidget {
  Drugs({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Names = [
      "Advil",
      "Tylenol",
      "Benadrly",
      "Advil",
      "Oscillococcinum",
      "Benadrly",
    ];
    List<String> Messages = [
      "Ibuprofen Tablets, 200 mg",
      "Acetaminophen Tablets, 600 mg",
      "Diphenhydramine Tablets, 25 mg",
      "Ibuprofen Tablets, 200 mg",
      "Ibuprofen Tablets, 200 mg",
      "Diphenhydramine Tablets, 25 mg",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("F5F7FB"),
        elevation: 0,
        leading: const Icon(
          Icons.list,
          color: Colors.cyan,
        ),
        title: Text(
          "Drugs", // Update the title based on selected tab
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
              backgroundColor: Colors
                  .transparent, // لجعل خلفية الدائرة شفافة
            ),
          ),
        ],
      ),
      backgroundColor: HexColor("F5F7FB"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: HexColor("1EA6D6"),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://5.imimg.com/data5/TN/WW/YA/SELLER-100718878/rabeprazole-sodium-ec-and-levosulpiride-sr-capsules-500x500.jpg",
                        height: 25,
                        fit: BoxFit.fill,
                        width: 40,
                        errorBuilder: (context, error, stackTrace) {
                          return const SizedBox(
                            width: 40,
                            height: 25,
                            child: Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(" New Drug",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          color: Colors.white,
                        )),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius:
                            BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: HexColor("F5F7FB"),
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
                    Icon(
                      Icons.search,
                      color: Colors.cyan,
                    ),
                    Text(
                      " Search...",
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Latest Searches", style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Text("Clear All",
                      style:
                      TextStyle(color: HexColor("1EA6D6"), fontSize: 20)),
                ],
              ),
            ),
            ListView.separated(
              itemCount: Names.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: HexColor("F5F7FB"),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70!,
                          blurRadius: 8,
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
                          child: Image.network(
                            "https://5.imimg.com/data5/TN/WW/YA/SELLER-100718878/rabeprazole-sodium-ec-and-levosulpiride-sr-capsules-500x500.jpg",
                            height: 50,
                            fit: BoxFit.fill,
                            width: 50,
                            errorBuilder: (context, error, stackTrace) {
                              return const SizedBox(
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: CircularProgressIndicator.adaptive(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
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
                        const SizedBox(width: 100),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.safety_check_rounded,
                                color: HexColor("1EA6D6"),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Prescribe",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: HexColor("1EA6D6"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5),
            ),
          ],
        ),
      ),
    );
  }
}
