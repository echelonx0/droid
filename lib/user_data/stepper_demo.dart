import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  //Group Button
  Axis direction = Axis.horizontal;

  /// Which holds the selected date
  /// Defaults to today's date.
  DateTime selectedDate = DateTime(2000);

  //Is the form collection ended?
  bool complete = false;

  bool hasKnownHealthProblems = false;
  bool hasJobOrIncome = false;

  List<String> psychoSocialFactors = [];
  List<String> psychoSocialOptions = [
    "I workout regularly",
    "I have a mentor",
    "I have written goals",
    "I have a relative who is a university graduate",
    "I handle stress well",
  ];

  next() {
    currentStep + 1 != 4
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Stepper(
                    type: stepperType,
                    physics: ScrollPhysics(),
                    currentStep: currentStep,
                    onStepContinue: next,
                    onStepTapped: (step) => goTo(step),
                    onStepCancel: cancel,
                    controlsBuilder: (BuildContext context,
                        {onStepContinue, onStepCancel}) {
                      return Row(
                        children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.redAccent),
                            onPressed: onStepContinue,
                            child: const Text(
                              'NEXT',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: onStepCancel,
                            child: const Text('BACK'),
                          ),
                        ],
                      );
                    },
                    steps: <Step>[
                      Step(
                        title: new Text('Date of birth'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${selectedDate.toLocal()}".split(' ')[0],
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextButton(
                              onPressed: () =>
                                  _selectDate(context), // Refer step 3
                              child: Text(
                                'Select date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        isActive: currentStep >= 0,
                        state: currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Income and health'),
                        content: Column(
                          children: [
                            CheckboxListTile(
                              title: Text(
                                  'Do you have any known mental health issue?'),
                              onChanged: (bool value) {
                                setState(() {
                                  hasKnownHealthProblems = value;
                                });
                              },
                              value: hasKnownHealthProblems,
                            ),
                            CheckboxListTile(
                              title: Text('I have a job/income earning skill'),
                              onChanged: (bool value) {
                                setState(() {
                                  hasJobOrIncome = value;
                                });
                              },
                              value: hasJobOrIncome,
                            ),
                          ],
                        ),
                        isActive: currentStep >= 0,
                        state: currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Value sources'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'What matters most to you?'),
                              minLines: 3,
                              maxLines: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText:
                                      'Who is the most important person in your life?'),
                            ),
                          ],
                        ),
                        isActive: currentStep >= 0,
                        state: currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: Text('Social support'),
                        content: GroupButton(
                          spacing: 10,
                          direction: direction,
                          isRadio: false,
                          onSelected: (index, isSelected) {
                            psychoSocialFactors.add(psychoSocialOptions[index]);
                          },
                          buttons: psychoSocialOptions,
                          selectedButtons: psychoSocialFactors,
                        ),
                      )
                    ],
                  ),
                  complete
                      ? TextButton(
                          onPressed: () {
                            print(
                                'Job: $hasJobOrIncome kolo: $hasKnownHealthProblems $psychoSocialFactors $selectedDate');
                          },
                          child: Text('Submit'))
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sync),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  /// This builds material date picker in Android
  buildMaterialDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2005),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  /// This builds cupertion date picker in iOS
  buildCupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (picked) {
                if (picked != null && picked != selectedDate)
                  setState(() {
                    selectedDate = picked;
                  });
              },
              initialDateTime: selectedDate,
              minimumYear: 1980,
              maximumYear: 2005,
            ),
          );
        });
  }

  _selectDate(BuildContext context) async {
    final ThemeData theme = Theme.of(context);
    assert(theme.platform != null);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return buildMaterialDatePicker(context);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return buildCupertinoDatePicker(context);
    }
  }
}
