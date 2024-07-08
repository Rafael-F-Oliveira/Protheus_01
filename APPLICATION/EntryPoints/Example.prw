// O Ponto de Entrada deve disparar para um Handler na Camada de InfraEstrutura para realizar o fluxo do negócio
// O Handler irá acionar um Command ou Query caso precise modificar ou buscar dados no Banco de dados
// No domínio ficaram os modelos da estrutura das tabelas (entidades) e detalhes essenciais ao negócio

// Em alguns casos, como ponto de entradas que implementam menus, se faz necessário o ponto de entrada acionar 
// um evento na camada de aplicação
