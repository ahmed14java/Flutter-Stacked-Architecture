import 'package:flutter/material.dart';
import 'package:myapp/ui/views/smart_widgets/double_increase_counter/double_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
        builder: (context, model, child) => GestureDetector(
          onTap: model.updateCounter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Tap to double the Counter',
                    textAlign: TextAlign.center,
                ),
                Text(model.counter.toString())
              ],
            ),
          ),
        ),
        viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
    );
  }
}
