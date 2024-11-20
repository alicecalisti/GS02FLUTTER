import 'dart:convert';



class Eletroposto {
  final String id;
  final String nome;
  final String informacoes;
  final String endereco;
  final String telefone;
  final List<String> conectores;

  Eletroposto({
    required this.id,
    required this.nome,
    required this.informacoes,
    required this.endereco,
    required this.telefone,
    required this.conectores,
  });

  factory Eletroposto.fromRawJson(String str) => Eletroposto.fromJson(json.decode(str));
 
  factory Eletroposto.fromJson(Map<String, dynamic> json) => Eletroposto(
    
      id: json['id'] ?? '',
      nome: json['nome'] ?? '',
      informacoes: json['informacoes'] ?? '',
      endereco: json['endereco'] ?? '',
      telefone: json['telefone'] ?? '',
      conectores: List<String>.from(json['conectores'].map((x)=>x)),
    
  );

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'subtitle': subtitle,
  //     'date': DateUtils.dateOnly(date).toIso8601String(),
  //     'is_completed': isCompleted,
  //     'task_group_id': groupId,
  //   };
  // }
}

