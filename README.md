# Forca

## Descrição
Um jogo da forca simples implementado em Elixir, onde você adivinha palavras escondidas. Utiliza processos supervisionados e comunicação via TCP para uma experiência de jogo interativa.

## Requisitos
- Elixir 1.16 ou superior
- Erlang/OTP 26 ou superior

## Setup de Desenvolvimento
Para iniciar seu projeto Mix:

```
mix compile
```
Após criar o projeto, adicione a lógica do servidor TCP em um módulo, utilizando `:gen_tcp` para lidar com conexões de rede.

## Requisitos Mínimos
1. Iniciar um servidor TCP quando o jogo é iniciado.
2. Aceitar conexões de jogadores no servidor TCP.
3. Escolher uma palavra aleatória de uma lista pré-definida como alvo para adivinhar.
4. Permitir tentativas de letras através da conexão TCP e responder com o estado atual da palavra.
5. Limitar as tentativas incorretas e terminar o jogo quando o limite for atingido ou a palavra for adivinhada.
6. Usar GenServer para gerenciar o estado do jogo e Supervisor para monitorar e reiniciar o jogo em caso de falhas.

## Como Jogar
1. Configure e inicie o servidor com `iex -S mix` e execute `Forca.iniciar_servidor(porta)`.
2. Conecte-se ao servidor usando um cliente TCP (telnet ou netcat, por exemplo) `telnet localhost porta`.
3. O jogo enviará a configuração inicial e você poderá começar a tentar letras enviando-as através da conexão TCP.
4. O estado atual do jogo será enviado após cada tentativa, mostrando quais letras foram adivinhadas e quantas tentativas restam.

## Dicas
- Explore a documentação do `:gen_tcp` para entender como abrir um socket e aceitar conexões.
- Trate cada conexão como um novo jogo ou mantenha o estado do jogo no servidor e associe-o a uma conexão específica.

## Links Úteis
- [Documentação oficial do Elixir](https://elixir-lang.org/docs.html)
- [Introdução ao Mix e OTP](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html)
- [Usando GenServer para manter estado](https://elixir-lang.org/getting-started/mix-otp/genserver.html)
- [Documentação do :gen_tcp em Erlang](http://erlang.org/doc/man/gen_tcp.html)

Divirta-se desenvolvendo e jogando o seu Jogo da Forca via TCP!
