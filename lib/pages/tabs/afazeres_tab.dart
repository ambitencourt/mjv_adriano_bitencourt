import 'package:flutter/material.dart';
import 'package:mjv_adriano_bitencourt/components/constants.dart';

import '../../components/custom_icon_button.dart';
import '../../components/text_widget.dart';
import '../../entities/afazer_entity.dart';

class AfazeresTab extends StatefulWidget {
  final int valorIniciaL;
  final void Function(int tabIndx)? callback;

  const AfazeresTab({
    super.key,
    required this.valorIniciaL,
    this.callback,
  });

  @override
  State<AfazeresTab> createState() => _AfazeresTabState();
}

class _AfazeresTabState extends State<AfazeresTab> {
  late List<AfazerEntity> _listaAfazeres;
  void handleAfazeres() {
    _listaAfazeres.add(
      AfazerEntity(
        uuid: 'teste3',
        titulo: 'Teste 3',
        dataInicio: DateTime.now(),
        dataFim: DateTime.now(),
        isConcluido: false,
      ),
    );
    //_listaAfazeres.add(item);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  void handleExcluir(int index) {
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  @override
  void initState() {
    _listaAfazeres = [
      AfazerEntity(
        uuid: 'teste1',
        titulo: 'Teste 1',
        dataInicio: DateTime.now(),
        dataFim: DateTime.now(),
        isConcluido: false,
      ),
      AfazerEntity(
        uuid: 'teste2',
        titulo: 'Teste 2',
        dataInicio: DateTime.now(),
        dataFim: DateTime.now(),
        isConcluido: true,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handleAfazeres,
          child: const TextWidget('Adicionar'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: ListView.builder(
              itemCount: _listaAfazeres.length,
              itemBuilder: (context, index) {
                final item = _listaAfazeres.elementAt(index);
                return Dismissible(
                  key: Key(item.uuid),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      handleExcluir(index);
                    } else {}
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          item.isConcluido == true
                              ? Icons.done_all
                              : Icons.check_sharp,
                          color: item.isConcluido == true ? kGreen : kGrey,
                        ),
                        title: TextWidget(
                          item.titulo,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: CustomIconButton(
                          onPressed: () {},
                          icon: Icons.keyboard_arrow_right_rounded,
                          size: 26,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
