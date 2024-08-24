import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sampletodo_10/cubic/cubicmodel/cubic_model.dart';
import 'package:flutter_sampletodo_10/cubic/tudo_add_cubic.dart';
import 'package:flutter_sampletodo_10/view/tudo_add.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TudoAdd()),
              );
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tudo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<TudoAddCubic, List<CubicModel>>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (context, index) {
                    final tudos = state[index];
                    return ListTile(
                      tileColor: Colors.blueGrey[200],
                      title: Text(tudos.name),
                      subtitle: Text(tudos.tme.hour.toString()),
                      trailing: IconButton(
                        onPressed: () {
                       BlocProvider.of<TudoAddCubic>(context).tudodel(tudos);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
