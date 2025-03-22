# Exemplo de Aplicação Flutter

Este é um exemplo simples de uma aplicação Flutter com navegação entre telas e o uso de diversos widgets, como `ListView`, `TextFormField`, e `ElevatedButton`.

## Estrutura do Projeto

A estrutura básica do projeto Flutter inclui as seguintes pastas e arquivos principais:

- **`lib/`**: Contém o código Dart da aplicação.
  - `main.dart`: Arquivo de entrada onde a aplicação é iniciada. Contém a definição das telas e navegação.
  
- **`android/`**, **`ios/`**, **`windows/`**: Contêm os arquivos nativos para cada plataforma de destino (Android, iOS, Windows).

### Arquivos Importantes

- **`main.dart`**: Define a tela inicial (`HomeScreen`) com uma lista horizontal e vertical de itens. Também contém o código para navegar para a segunda tela (`SecondScreen`), que possui campos de texto e botões.
  
### Navegação

1. **Tela Inicial**:
   - A tela inicial apresenta duas listas: uma lista horizontal (`ListView`) e uma lista vertical de itens (`ListTile`).
   - Um botão **"Ir para a Segunda Tela"** que, ao ser pressionado, leva o usuário para a segunda tela.

2. **Segunda Tela**:
   - Contém dois campos de texto: um para o nome e outro para o email.
   - Botões de **"Enviar"** e **"Cancelar"**. O botão "Cancelar" retorna à tela inicial.

A navegação entre as telas é feita com `Navigator.push` e `Navigator.pop`.

## Como Rodar o Projeto

1. **Instalar o Flutter**:
   - Siga as instruções de instalação do Flutter para o seu sistema operacional. [Clique aqui para ver as instruções](https://flutter.dev/docs/get-started/install).
   
2. **Configurar o Editor**:
   - Recomendamos usar o [VS Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio).
   - Instale o plugin Flutter para seu editor.

3. **Executar o Projeto**:
   - Clone ou baixe o repositório do projeto.
   - Abra o projeto no seu editor.
   - Abra um terminal no diretório do projeto e execute o seguinte comando para rodar o aplicativo no seu emulador ou dispositivo físico:
     ```bash
     flutter run
     ```
   
4. **Emulador/Dispositivo**:
   - Se você estiver usando um emulador, certifique-se de que ele esteja configurado corretamente.
   - Caso esteja utilizando um dispositivo físico, conecte-o ao computador e certifique-se de que o modo de desenvolvedor esteja ativado.

## Explicação da Navegação

A navegação entre as telas é feita com o widget `Navigator`:

- **Tela Inicial**:
  - Ao pressionar o botão "Ir para a Segunda Tela", a função `Navigator.push` é chamada, o que empurra a `SecondScreen` para a pilha de navegação e mostra a segunda tela.
  
- **Segunda Tela**:
  - O botão "Cancelar" chama `Navigator.pop`, que remove a tela atual da pilha e volta à tela anterior (a tela inicial).
  
## Conclusão

Este exemplo demonstra como utilizar alguns dos principais widgets do Flutter para criar interfaces interativas e realizar navegação entre telas. Você pode expandir esse projeto, adicionando mais funcionalidades, como validação de formulários, interatividade e armazenamento de dados.
