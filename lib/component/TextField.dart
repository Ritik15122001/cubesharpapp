import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool passToggle =true;
  final _formfield =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Form(
        key: _formfield,
        child: Column(
          children: [
            TextFormField(
              controller: widget.controller,
              obscureText: passToggle,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  prefixIcon:IconButton(onPressed: () {}, icon: Icon(Icons.password_outlined)),
                  suffixIcon: InkWell(
                  onTap: (){
                    setState((){
                      passToggle=!passToggle;
                    });
                  },child:Icon(passToggle? Icons.visibility:Icons.visibility_off) ,
                )
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Enter Password";
                }else if(widget.controller.toString().length<6){
                   return "than 6 Character";
                }
              },
            ),
          ],
        ),

      ),
    );
  }
}