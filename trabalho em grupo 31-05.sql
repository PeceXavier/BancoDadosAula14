select * from faturas;

/*1 - O valor da fatura mais alta cujo a cidade de cobrança é “Oslo”. 
2 - O valor da fatura mais baixa de todas.
3 - O valor médio das faturas que o país de cobrança é “Canada”.
4 - A quantidade de faturas que o país de cobrança é “Canada”. 
5 - O valor total somado de todas as faturas.
6 - Selecione o id, a data e valor das faturas com valor abaixo da média*/

SELECT cidade_cobranca, MAX(valor_total) AS faturaMaisCara FROM faturas WHERE cidade_cobranca = 'Oslo';

SELECT valor_total, MIN(valor_total) AS menorfatura FROM faturas;

SELECT pais_cobranca, AVG(valor_total) AS valormedio FROM faturas WHERE pais_cobranca = 'Canada';

SELECT  SUM(valor_total) AS valorsoma FROM faturas;


SELECT id, data_fatura, valor_total FROM faturas WHERE valor_total < (SELECT AVG(valor_total) FROM faturas);

/*7 - A data de nascimento do funcionário mais jovem da empresa
8 - A data de nascimento do funcionário mais velho da empresa 
9 - Formate a data do nascimento dos funcionários no formato ex: "02 May 2020"(DATE_FORMAT)Na tabela cancoes: 
10 - O numero de cancoes que tem como compositor “AC/DC”
11 - A duração média das músicas em milisegundos
12 - O tamanho médio em bytes das músicas que como compositor “AC/DC”*/

SELECT * FROM empregados;

SELECT data_nascimento FROM empregados ORDER BY data_nascimento DESC LIMIT 1;

SELECT data_nascimento FROM empregados ORDER BY data_nascimento ASC LIMIT 1;



/*13 - Quantidade de clientes que moram na cidade de “São Paulo”
14 - Quantidade de clientes que moram na cidade “Paris” 
15 - Quantidade de clientes que tenham email do “yahoo”*/