import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/services/bloc/toggle_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<ToggleBloc, ToggleState>(
              builder: (context, state) => TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () =>
                        context.read<ToggleBloc>().add(ToogleSubmitEvent()),
                    icon: const FaIcon(FontAwesomeIcons.eye),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
