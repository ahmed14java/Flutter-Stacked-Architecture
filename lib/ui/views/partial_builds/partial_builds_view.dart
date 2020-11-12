import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/views/partial_builds/partial_builds_View_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked_hooks/stacked_hooks.dart';


class PartialBuildsView extends StatelessWidget {

  const PartialBuildsView({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
          builder: (context, model, child) => Scaffold(
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _StringForm(),
                _TitleAndValue()
              ],
            ),
          ),
          viewModelBuilder: () => PartialBuildsViewModel());
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context,
      PartialBuildsViewModel viewModel) {

    var text = useTextEditingController();
    return TextField(
        controller: text,
        onChanged: viewModel.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {

  _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel viewModel) {
      return Column(
        children: [
          Text(
            viewModel.title ?? '',
            style: TextStyle(fontSize: 40),
          )
        ],
      );
  }
}


