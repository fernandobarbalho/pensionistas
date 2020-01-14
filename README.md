# Pensionistas no executivo federal brasileiro

## ETL e browser de dados para visualização de tabela com pensionistas do executivo federal

A Fiquem Sabendo, Agência de dados públicos independente e especializada na Lei de Acesso à Informação (LAI), após três anos de cobrança, conseguiu que o TCU decidisse pela obrigatoriedade do governo federal em publicar os dados relativos a pensionistas e servidores inativos do poder executivo federal, incluindo as pensões de filhas de militares.

<blockquote class="twitter-tweet"><p lang="pt" dir="ltr">Quanto recebem filhas de militares e outros pensionistas do governo federal? A thread dos dados que ficaram escondidos por mais de 50 anos.</p>&mdash; Fiquem Sabendo (@_fiquemsabendo) <a href="https://twitter.com/_fiquemsabendo/status/1216730018858065920?ref_src=twsrc%5Etfw">January 13, 2020</a></blockquote>

Os dados estão agora publicados nesse endereço http://dados.gov.br/dataset/gestao-de-pessoas-executivo-federal-pensionistas.

Como há um grande volume de dados e como não há muita facilidade para se trabalhar a navegação dos dados, optou-se aqui em produzir um script que faça a transformação do dado bruto e um aplicativo que apresente os dados de forma fácil de se navegar.

O aplicativo está disponível nesse endereço: https://fabdev.shinyapps.io/Pensionistas/

O script para o aplicativo e o script do tratamento dos dados estão disponíveis aqui nesse repositório.
