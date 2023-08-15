void main() {

  final nomeMap = map['nome'];
  final cursoMap = map['curso'];

  print(nomeMap);
  print(cursoMap);

  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.id);

  final repository = Repository();
  print(repository.buscarCursoFlutter());
  print(repository.registrarComoAluno(pessoa));

}

final pessoa = Pessoa(nome: 'Paulo', idade: 30, id: 1);

Map<String, dynamic> map = {
  'nome': 'Paulo',
  'idade': 30


};

class Pessoa {
  final int id;
  final String nome;
  final int idade;
  Pessoa({required this.nome, required this.idade, required this.id});
}

class Repository {
  String buscarCursoFlutter() {
    return 'Flutter';
  }
  String registrarComoAluno(Pessoa pessoa) {
    return 'Aluno registrado com sucesso';
  }
}