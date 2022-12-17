import 'package:flutter/material.dart';
import 'package:plana_new_plan/widgets/custom_text_field.dart';

class NewPlan extends StatefulWidget {
  const NewPlan({super.key});

  @override
  State<NewPlan> createState() => _NewPlanState();
}

class _NewPlanState extends State<NewPlan> {
  bool isOffer = false;

  @override
  Widget build(BuildContext context) {
    var widthPiece = MediaQuery.of(context).size.width;
    var heightPiece = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(149, 149, 149, 1),
        shadowColor: Colors.transparent,
        title: Text(
          'PLANA',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            letterSpacing: 3.0,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      backgroundColor: Color.fromRGBO(149, 149, 149, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 30),
            child: Text(
              "Create a New Plan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 32.0,
                ),
                child: ListView(
                  children: [
                    CustomTextField(
                      hintText: "Plan Name",
                      suffixIcon: Icon(
                        Icons.celebration,
                        color: Color.fromRGBO(216, 216, 216, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Checkbox(
                            value: isOffer,
                            onChanged: (value) {
                              setState(() {
                                isOffer = !isOffer;
                              });
                            },
                            side: BorderSide.none,
                            activeColor: Colors.transparent,
                            checkColor: Color.fromRGBO(216, 216, 216, 1),
                            focusColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            "Is this plan a offer/discount/voucher?",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: "Description about the plan",
                      minLines: 5,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            hintText: "Start Date | Time",
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Color.fromRGBO(216, 216, 216, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextField(
                            hintText: "End Date | Time",
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Color.fromRGBO(216, 216, 216, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: "Venue",
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(216, 216, 216, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: "Upload New Image",
                      suffixIcon: Icon(
                        Icons.add_circle,
                        color: Color.fromRGBO(216, 216, 216, 1),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(216, 216, 216, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: SizedBox.square(
                                dimension: 80,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(137, 137, 137, 1)),
                        fixedSize:
                            MaterialStatePropertyAll(Size(widthPiece, 40)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
