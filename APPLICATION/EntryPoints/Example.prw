// O Ponto de Entrada deve disparar para um Handler na Camada de InfraEstrutura para realizar o fluxo do neg�cio
// O Handler ir� acionar um Command ou Query caso precise modificar ou buscar dados no Banco de dados
// No dom�nio ficaram os modelos da estrutura das tabelas (entidades) e detalhes essenciais ao neg�cio

// Em alguns casos, como ponto de entradas que implementam menus, se faz necess�rio o ponto de entrada acionar 
// um evento na camada de aplica��o
