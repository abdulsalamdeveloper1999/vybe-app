// ignore: must_be_immutable
import 'package:flutter/material.dart';
import '../weight.dart';

class LoginFields extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  var read;
  var hintText, suffixicon, prefixicon;
  bool? obSecure;
  TextEditingController? formcontroller = TextEditingController();
  ValueChanged<String>? onChanged;
  var fieldValidator;
  var onSavedState;
  var fillColor;
  var style;
  var hintStyle;
  var contentPadding;
  var enableBorder;
  var focusBorder;
  var border;
  var errorBorder;
  var height;

  LoginFields(
      {Key? key,
      this.read = false,
      this.border,
      this.height,
      this.errorBorder,
      this.focusBorder,
      this.enableBorder,
      this.contentPadding,
      this.style,
      this.hintStyle,
      this.fillColor = Colors.white,
      this.hintText,
      this.onChanged,
      this.formcontroller,
      this.obSecure = false,
      this.suffixicon,
      this.prefixicon,
      this.fieldValidator,
      this.onSavedState})
      : super(key: key);

  @override
  _LoginFieldsState createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: widget.height,
      child: TextFormField(
        readOnly: widget.read,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontSize: 16 * sp,
          fontWeight: kfive,
          color: Color(0xffFFFFFF),
          fontFamily: 'Poppins',
        ),
        obscureText: widget.obSecure!,
        controller: widget.formcontroller,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 60, minHeight: 60),
          hintText: '${widget.hintText}',
          prefixIcon: Container(
            margin: EdgeInsets.only(right: w * 0.03),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 40,
                color: Color(0xffF75E7E).withOpacity(0.2),
              )
            ]),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: widget.prefixicon,
            ),
          ),
          suffixIcon: widget.suffixicon,
          hintStyle: TextStyle(
            fontSize: 16 * sp,
            fontWeight: kfive,
            color: Color(0xffC4C4C4),
            fontFamily: 'Poppins',
          ),
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          fillColor: Color(0xffF9F9F9).withOpacity(0.20),
          filled: true,
        ),
        validator: widget.fieldValidator,
      ),
    );
  }
}
