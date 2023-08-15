void main() {

  //final nomeMap = map['nome'];
  //final cursoMap = map['curso'];
  // destruição
  final {'nome' : nomeMap, 'curso' : cursoMap} = map;
  
  final Pessoa(:nome, :idade, :email) = pessoa;

  print(nome);
  print(idade);
  print(email);
  
  /// destruição
  final Repository(:buscarCursoFlutter, :registrarComoAluno) = Repository();

  print(buscarCursoFlutter());
  print(registrarComoAluno(pessoa));

  final repository = Repository();
  print(repository.buscarCursoFlutter());
  print(repository.registrarComoAluno(pessoa));

  /// Records
  final repo = Repository();

  final (:nomeAluno, :idadeAluno) = repo.retornarAlunoRecord(1);
  print(nomeAluno);
  print(idadeAluno);

  final dto = (nome: 'Rodrigo', email: '');
  print(dto);

  repo.cadastrarPessoa(dto);

}

final pessoa = Pessoa(nome: 'Paulo', idade: 30, email: 1);

Map<String, dynamic> map = {
  'nome': 'Paulo',
  'idade': 30
};




class Pessoa {
  final int email;
  final String nome;
  final int idade;
  Pessoa({required this.nome, required this.idade, required this.email});
}

class Repository {
  String buscarCursoFlutter() {
    return 'Flutter';
  }
  String registrarComoAluno(Pessoa pessoa) {
    return 'Aluno registrado com sucesso';
  }

  void cadastrarPessoa(({String nome, String email,}) pessoa) {
    
  }

  Map<String, dynamic> retornarAlunoMap(int id) {
    return {'nome': 'Douglas Bordignon', 'idade': 28};
  }

  ({String nomeAluno, int idadeAluno}) retornarAlunoRecord(int id) {
    return (nomeAluno: 'Douglas Bordignon', idadeAluno: 28);
  }

}

class RetornoAluno{
  String nome;
  int idade;
  RetornoAluno({
    required this.nome,
    required this.idade
  });
}