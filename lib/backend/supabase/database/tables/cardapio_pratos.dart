import '../database.dart';

class CardapioPratosTable extends SupabaseTable<CardapioPratosRow> {
  @override
  String get tableName => 'Cardapio_Pratos';

  @override
  CardapioPratosRow createRow(Map<String, dynamic> data) =>
      CardapioPratosRow(data);
}

class CardapioPratosRow extends SupabaseDataRow {
  CardapioPratosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CardapioPratosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
