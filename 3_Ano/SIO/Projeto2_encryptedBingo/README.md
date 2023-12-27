# Assignment 2 - Secure Bingo game

## Introdução
Este projeto foi realizado no âmbito da disciplina de Segurança Informática e nas Organizações. Tem como objetivo desenvolver um jogo de Bingo robusto usando sockets, criptografia e a linguagem python. 

## Como jogar

**Instruções para inicializar o jogo:**
1. Ligar playing area fazendo "python3 playing_area.py **port**"
2. Ligar jogadores fazendo "python3 player.py **port**"
3. Para iniciar o jogo fazer "python3 caller.py **port**"
4. Para terminar o jogo fazer "***Ctrl+C***" no terminal da playing_area.py script (**importante** para eliminar o ficheiro de identificação dos jogadores)

**port** = porto escolhido por quem executar os scripts

A ordem dos comandos é **importante**!

## Funcionamento do jogo
Este jogo, muito resumidamente, funciona á base de uma relação **cliente-servidor**, primeiro começa-se por iniciar uma "playing area" que basicamente vai ser o local onde o jogo vai decorrer. De seguida, conectam-se os jogadores á playing area, esta vai receber todas as suas informações (número de identificação e carta do jogador). Por fim, conectamos o "caller" á playing area e automaticamente damos início á partida de bingo, o caller envia o "deck" para a playing area que, no nosso caso é uma lista de números que vão desde o número 1 ao 16 baralhados previamente. Depois do deck ser enviado para a playing area, este vai ser enviado aos players conectados e ao caller, para estes calcularem os seus bingos. Depois de os bingos serem calculados, todos os players e até mesmo o caller ficam a saber quem ganhou o jogo, e adicionalmente ficam a saber a carta que cada jogador tinha.

## Objetivos cumpridos

No geral, cumprimos poucos objetivos. Conseguimos implementar a cifras assimétricas mas já não tinhamos tempo para implementar a cifragem simétrica no deck.
Não conseguimos implementar a autenticação através do cartão de cidadão, falta também a implementação da possibilidade de os jogadores conseguirem fazer batota, e não temos audit log...

## Conclusão

Embora este projeto tenha ficado aquém da nossas expectativas, o facto de estarmos a utilizar a criptografia num contexto mais prático, permitiu-nos ficar a compreender de uma forma muito mais clara o conceitos de criptografia simétrica e assimétrica.

## Autores do projeto

| Nº Mec.   | Nome                                              | Email               |
| :---:     | :---:                                             | :---:               |
| 103320     | Bruno Gomes    | brunofgomes@ua.pt   |
| 98287     | João Gonçalves     | joao.mendes.goncalves@ua.pt |
| 102631    | João Balseiro |  joaobalseiro@ua.pt |

## Contribuição dos autores
A contribuição de cada pessoa integrante neste projeto pode ser vista através dos "commits" efetuados no repositório remoto do projeto **[aqui](https://github.com/detiuaveiro/assignment-2---bingo-recurso-grupo_1007/graphs/contributors)**.
