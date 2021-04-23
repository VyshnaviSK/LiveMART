import 'package:flutter/material.dart';
import 'package:flutter_app/components/text_field_container.dart';
import 'package:flutter_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool hidetext = true;
    return TextFieldContainer(
      child: TextFormField(
        obscureText: hidetext,
        controller: controller,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
         /* suffixIcon: GestureDetector(
            child: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            onTap: () {
              hidetext = false;
            },
          ),
          border: InputBorder.none,
        ),
          */
      ),
    )
    );
  }
}
