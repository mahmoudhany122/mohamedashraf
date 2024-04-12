import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddInformation extends StatefulWidget {
  AddInformation({Key? key}) : super(key: key);

  @override
  State<AddInformation> createState() => _AddInformationState();
}

class _AddInformationState extends State<AddInformation> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          "Add Information",
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
              radius: 30,
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.M0FZeVMZa_n7zHGbAcJF1wHaFj?rs=1&pid=ImgDetMain",
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildBorderedTextField(
                    KeyboardType: TextInputType.name,
                    labelText: 'First Name',
                    controller: nameController,
                  ),
                  SizedBox(height: 10),
                  buildBorderedTextField(
                    KeyboardType: TextInputType.emailAddress,
                    labelText: 'Email',
                    controller: emailController,
                    prefixIcon: Icon(Icons.email),
                  ),
                  SizedBox(height: 10),
                  buildBorderedTextField(
                    KeyboardType: TextInputType.number,
                    labelText: 'Age',
                    controller: ageController,
                  ),
                  SizedBox(height: 10),
                  buildBorderedTextField(
                    KeyboardType: TextInputType.streetAddress,
                    labelText: 'Address',
                    controller: addressController,
                  ),
                  SizedBox(height: 10),
                  buildPhoneNumberField(),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white70,
                    ),
                    child: MaterialButton(
                      color: Colors.cyan,
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Form is valid, perform signup logic
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBorderedTextField({
    required String labelText,
    required TextEditingController controller,
    required  KeyboardType,
    Icon? prefixIcon,
  }) {
    return Container(
      child: TextFormField(
        keyboardType:KeyboardType,
        controller: controller,
        validator: (value) {
          return value!.isEmpty ? "Please enter $labelText" : null;
        },
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black26),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }

  Widget buildPhoneNumberField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(
            '+20',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          Flexible(
            child: TextFormField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              validator: (value) {
                return value!.isEmpty ? "Please enter Phone Number" : null;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone Number',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
