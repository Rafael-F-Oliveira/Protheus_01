# Protheus_01 (EM ANDAMENTO)
Repositório do Protheus para testes de API, Pontos de Entrada, Telas e Relatórios em advpl e tlpp.

A ideia principal é criar uma estrutura base para os repositórios utilizados por desenvolvedores em empresas com o sistema Protheus.
O projeto está dividido em 4 camadas na seguinte ordem:

* Apresentação / Preentation
* Aplicação / Application
* Infraestrutura / Infrastructura
* Domínio / Domain

Onde somente a camada superior poderá enxergar as camadas inferiores para evitar referência circular. Exemplo:
A camada de Apresentação pode instanciar uma classe da camada de Aplicação (gerando uma dependência), sendo que o oposto não deve ocorrer .

Além disso estamos segregando os comandos das consultas.
Apesar da criação da interface ainda estou trabalhando na implementação delas, assim como um meio para injetar dependência já que o tlpp ou advpl até onde tenho conhecimento não possuem nenhuma tratativa nativa para este caso.

O projeto trabalha hoje com a ideia de Ponto de Entradas, EndPoints (API), Criação de telas customizadas e relatórios para que o domínio da aplicação fique o mais abstraído o possível e seja possível compilar o projeto como um todo no RPO da aplicação mesmo ou de uma API caso estejam em serviços separados.

A ideia veio da dificuldade de organização hoje existente neste tipos de repositórios.
