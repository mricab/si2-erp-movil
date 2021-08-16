import 'package:flutter/material.dart';
import 'package:client/widgets/locationPickerField.dart';
import 'package:simple_location_picker/utils/slp_constants.dart';

Color BackgroundColor() {
  return Color(0xffecf6f9);
}

Color BarBackgroundColor() {
  return Color(0xff4ca3dd);
}

BoxDecoration LoginBackground() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
        const Color(0xff4ca3dd) /*left-down*/,
        const Color(0xfff9f7d6) /*right-up*/ //d9edf6
      ]));
}

Text specialTitle(String title) {
  return Text(title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 36, fontWeight: FontWeight.w500, color: Color(0xff5e78a5)));
}

Widget specialButton(String label, VoidCallback method) {
  Color getForegroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Color(0xff60e7ff);
  }

  return TextButton(
    onPressed: method,
    child: Text(
      label,
      style: TextStyle(fontSize: 14),
    ),
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Color(0xffffffff)),
        backgroundColor: MaterialStateProperty.all(Color(0xfff2c539)), //f2c539
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ))),
  );
}

TextFormField specialPasswordFormField(String hint, TextAlign align,
    String valMethod(String value), TextEditingController fieldController) {
  return TextFormField(
    controller: fieldController,
    style: TextStyle(color: Colors.white),
    textAlign: align,
    obscureText: true,
    decoration: textFormFieldsDecoration(hint, null, null),
    validator: valMethod,
  );
}

InputDecoration textFormFieldsDecoration(
    String hint, IconData iconData, String textData) {
  Icon sIcon;
  if (iconData != null) {
    sIcon = Icon(
      iconData,
      color: Colors.black,
    );
  }
  Text sText;
  if (textData != null) {
    sText = Text(
      textData,
      style: TextStyle(color: Colors.black),
    );
  }

  return InputDecoration(
    fillColor: Colors.black,
    filled: false,
    hintText: hint,
    hintStyle: TextStyle(color: Colors.white),
    focusColor: Colors.green,
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.red, width: 2.0, style: BorderStyle.solid)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 2.0,
            style: BorderStyle.solid)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.white, width: 1.0, style: BorderStyle.solid)),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
    suffix: sText,
    suffixIcon: sIcon,
  );
}

TextFormField specialDatePicker(
    String label,
    DateTime iDate,
    DateTime fDate,
    DateTime lDate,
    BuildContext context,
    String valMethod(String value),
    TextEditingController fieldController) {
  return TextFormField(
    controller: fieldController,
    readOnly: true,
    validator: valMethod,
    decoration:
        textFormFieldsDecoration(label, Icons.calendar_today_outlined, null),
    onTap: () async {
      var date = await showDatePicker(
          context: context,
          initialDate: iDate,
          firstDate: fDate,
          lastDate: lDate);
      fieldController.text = date.toString().substring(0, 10);
    },
  );
}

Widget specialLocationField(
    BuildContext context,
    String valMethod(String value),
    TextEditingController latController,
    TextEditingController lngController,
    double startLat,
    double startLng) {
  return LocationPickerField(
    context: context,
    latController: latController,
    lngController: lngController,
    validator: valMethod,
    avatarRadius: 45,
    avatarBackground: Colors.lightBlue,
    appBarTitle: 'Ubicación',
    appBarColor: Colors.black87,
    appBarTextColor: Colors.white,
    markerColor: Colors.blue,
    startingLatitude: startLat ?? SLPConstants.DEFAULT_LATITUDE,
    startingLongitude: startLng ?? SLPConstants.DEFAULT_LONGITUDE,
  );
}

TextFormField specialMultiLineTextFormField(
    String hint,
    TextAlign align,
    int min,
    int max,
    String valMethod(String value),
    TextEditingController fieldController) {
  return TextFormField(
    controller: fieldController,
    minLines: min,
    maxLines: max,
    validator: valMethod,
    style: TextStyle(color: Colors.black),
    textAlign: align,
    obscureText: false,
    decoration: textFormFieldsDecoration(hint, null, null),
  );
}

DropdownButtonFormField specialDropdown(
    String hint,
    List<Map<String, String>> items,
    String valMethod(String value),
    TextEditingController fieldController) {
  return DropdownButtonFormField(
    icon: Icon(null),
    validator: valMethod,
    decoration: textFormFieldsDecoration(hint, Icons.keyboard_arrow_down, null),
    onChanged: (value) {
      fieldController.text = value;
    },
    dropdownColor: Colors.lightBlue,
    items: items.map<DropdownMenuItem<String>>((Map item) {
      return DropdownMenuItem<String>(
        value: item['id'],
        child: Text(
          item['name'],
          style: TextStyle(color: Colors.black),
        ),
      );
    }).toList(),
  );
}

TextFormField specialTextFormField(String hint, TextAlign align,
    String valMethod(String value), TextEditingController fieldController) {
  return TextFormField(
    controller: fieldController,
    style: TextStyle(color: Colors.black),
    textAlign: align,
    obscureText: false,
    decoration: textFormFieldsDecoration(hint, null, null),
    validator: valMethod,
  );
}

TextFormField specialNumericField(String hint, TextAlign align,
    String valMethod(String value), TextEditingController fieldController) {
  return TextFormField(
    controller: fieldController,
    keyboardType: TextInputType.number,
    style: TextStyle(color: Colors.black),
    textAlign: align,
    obscureText: false,
    decoration: textFormFieldsDecoration(hint, null, null),
    validator: valMethod,
  );
}
