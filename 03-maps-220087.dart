void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Lucario',
    'hp': 120,
    'isAlive': true,
    'abilities': {"1": "Puño", "2": "Contraataque", "3": "Puño de hielo"},
    'sprites': <String>['img1.png', 'img2.png', 'img3.png'],
    'winRate': null,
  };

  print(pokemon);
  print(" ");
  // print(pokemon['name']); //* accedemos al valor que tiene la llave 'name'

  pokemon['hp'] > 0 ? true : false;

  //* Accediendo a las propiedades individuales del Mapa
  // Construir string de habilidades con índices
  String habilidades = '';
  (pokemon['abilities'] as Map).forEach((key, value) {
    habilidades += '\n    $key: $value';
  });

  // Construir string de sprites con índices
  String sprites = '';
  List listaSprites = pokemon['sprites'] as List;
  for (int i = 0; i < listaSprites.length; i++) {
    sprites += '\n    ${i + 1}: ${listaSprites[i]}';
  }

  print("""
  Nombre: ${pokemon['name']}                           tipo de dato: ${pokemon['name'].runtimeType}                  
  Vida: ${pokemon['hp']}                                tipo de dato: ${pokemon['hp'].runtimeType}
  Está vivo: ${pokemon['isAlive'] ? 'Sí' : 'No'}               tipo de dato: ${pokemon['isAlive'].runtimeType}
  Habilidades:                    tipo de dato: ${pokemon['abilities'].runtimeType}
  $habilidades
  Sprites:                        tipo de dato: ${pokemon['sprites'].runtimeType}
  $sprites 
""");
}