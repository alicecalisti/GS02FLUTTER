import 'package:flutter/material.dart';
import 'package:gs02_energiaverde/provider/eletroposto_provider.dart';
import 'package:provider/provider.dart';

class EletropostoPage extends StatefulWidget {
  const EletropostoPage({super.key});

  @override
  State<EletropostoPage> createState() => _EletropostoPageState();
}

class _EletropostoPageState extends State<EletropostoPage> {
  late final EletropostoProvider eletropostoProvider;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Eletroposto')),
      body: Consumer<EletropostoProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: provider.eletroposto.length,
            itemBuilder: (context, index) {
              final eletroposto = provider.eletroposto[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eletroposto.nome,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),                       
            
                        Text(
                          eletroposto.endereco,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          eletroposto.informacoes,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          eletroposto.telefone,
                          style: TextStyle(fontSize: 16),
                        ),                    
                      ],
                    ),
                  ),
              );
            },
          );
        },
      )
    );
  }
}


