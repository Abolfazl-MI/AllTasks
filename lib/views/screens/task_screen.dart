import 'package:alltask/views/components/theme_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  //* controllers

  //* instans
  var selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: Column(
          children: [
            _showDatePicker(),
            _divider(),
            _cartTile(),
          ],
        ),
      ),
    );
  }

  _appBar() {
    //todo : style the text
    return AppBar(elevation: 0, backgroundColor: Colors.white, actions: [
      Expanded(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: AppIcons.menu,
            ),
            const Text("Tasks"),
          ],
        ),
      ),
    ]);
  }

  _divider() {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 8),
      child: Divider(
        color: ColorPallet.grey,
        thickness: 0.7,
      ),
    );
  }

  _showDatePicker() {
    // todo : style texts

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: FlutterDatePickerTimeline(
        //configs
        itemHeight: 60,
        calendarMode: CalendarMode.gregorian,
        initialFocusedDate: DateTime.now(),
        itemRadius: 18,
        selectedItemWidth: 160,
        startDate: DateTime(2022, 07, 01),
        endDate: DateTime(2222, 12, 30),
        initialSelectedDate: DateTime.now(),
        onSelectedDateChange: (DateTime? dateTime) {},
        //unselected
        //unselectedItemTextStyle: ThemeConfigs.unselectedDatePicker,
        unselectedItemWidth: 55,
        unselectedItemBackgroundColor: ColorPallet.lightgrey,
        //selected
        //selectedItemTextStyle: ThemeConfigs.selectedDatePicker,
        selectedItemBackgroundColor: ColorPallet.primary,
      ),
    );
  }

  _cartTile() {
    //todo: dynamic color for borders and icon for catagory

    return Container(
      width: 380,
      height: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorPallet.taskCart, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //! catagory & details
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* catagory and icons and texts
              Row(
                children: [
                  //? catagory
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.red)),
                        child: const Icon(
                          Icons.school,
                          size: 40,
                          color: Colors.red,
                        )),
                  ),
                  //? title and icons
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //*title
                      const Text(
                        "Title",
                        //style: ThemeConfigs.titleTask,
                      ),
                      //* icons
                      Row(
                        children: const [
                          Icon(
                            CupertinoIcons.flame_fill,
                            color: Color.fromARGB(255, 255, 60, 0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.repeat_one,
                            color: ColorPallet.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.person,
                            color: ColorPallet.black,
                          ),
                          Text(
                            "Dr.zare",
                            //style: ThemeConfigs.noteTile,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              //* Note
              Container(
                  margin: const EdgeInsets.only(top: 20, left: 13),
                  width: 250,
                  height: 50,
                  child: Text(
                    i,
                    // style: ThemeConfigs.noteTile,
                  )),
            ],
          ),

          //! checkbox and time
          Column(
            children: [
              //* time
              Row(
                children: const [
                  ImageIcon(AssetImage("assets/time.png")),
                  Text(
                    "8:20 Am",
                    //style: ThemeConfigs.timeTile,
                  )
                ],
              ),
              //* checkBox
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorPallet.primary)),
                  ))
            ],
          )
        ],
      ),
    );
  }

  priordyBackColor(int num) {
    switch (num) {
      case 0:
        return ColorPallet.lowPriordyBack;
      case 1:
        return ColorPallet.mediumePriordyBack;
      case 2:
        return ColorPallet.highPriordyBack;
    }
  }

  priordyiconColor(int num) {
    switch (num) {
      case 0:
        return ColorPallet.lowPriordyicon;
      case 1:
        return ColorPallet.mediumePriordyicon;
      case 2:
        return ColorPallet.highPriordyicon;
    }
  }

  catagoryiconColor(int num) {
    switch (num) {
      case 0:
        return ColorPallet.icoTask;
      case 1:
        return ColorPallet.icoQuit;
      case 2:
        return ColorPallet.icoMeditation;
      case 3:
        return ColorPallet.icoSport;
      case 4:
        return ColorPallet.icoHome;
      case 5:
        return ColorPallet.icoStudy;
      case 6:
        return ColorPallet.icoHealth;
      case 7:
        return ColorPallet.icoSocial;
      case 8:
        return ColorPallet.icowork;
    }
  }

  catagoryBackColor(int num) {
    switch (num) {
      case 0:
        return ColorPallet.catTask;
      case 1:
        return ColorPallet.catQuit;
      case 2:
        return ColorPallet.catMeditation;
      case 3:
        return ColorPallet.catSport;
      case 4:
        return ColorPallet.catHome;
      case 5:
        return ColorPallet.catStudy;
      case 6:
        return ColorPallet.catHealth;
      case 7:
        return ColorPallet.catSocial;
      case 8:
        return ColorPallet.catwork;
    }
  }
}

var i =
    "molecular biology, STRING is a biological database and web resource of known and predicted protein–protein interactions. The STRING database con";
