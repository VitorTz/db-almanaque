<div style="display: flex; justify-content: space-between;">

[<img src="https://wiki.postgresql.org/images/a/a4/PostgreSQL_logo.3colors.svg" width="100">](https://www.postgresql.org/)



# Bem vindo ao almanaque do SQL
</div>
<p>Aqui será seu guia e referência de SQL, com comandos rápidos para que você apenas batendo o olho lembre-se do que é necessário. </p>
</b>


## Pedágio

Primeiramente, quero que saiba que será disponibilizado um arquivo Dockerfile contendo uma imagem base do PostgreSQL. Eu utilizarei o programa DBeaver para manipular o banco de dados com interface gráfica, mas sinta-se a vontade de utilizar o que você desejar.

</br>

## Passo #1

Primeiro siga o passos de instalação do <a href="https://dbeaver.io/download/"> DBeaver </a>


## Passo #2

Você tem o docker instalado? Caso a resposta seja não, <a href="https://docs.docker.com/install"> Siga as instruções </a>


## Passo #3
Com o docker instalado, execute o seguinte comando (dentro do diretório do arquivo Dockerfile):
```
docker build -t db-almanaque .
```
e depois: 

```
docker run -p 5432:5432 db-almanaque
```

## Passo #4
Agora você pode acessar o DBeaver, Shift + Ctrl + N nessa nova conexão
selecione o postgreSQL, você irá prencher essas informações:

```
banco de dados: db_almanaque
nome de usuário: user
senha: pass
```
clique em finilizar (finish). Depois clique em SQL
a partir daqui, você irá acompanhar pelos arquivos com a extensão .sql.


</br>
</br>

# Como Contribuir
Estou aberto para contribuições! Se você deseja contribuir, siga os passos abaixo:

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (git checkout -b feature/nova-feature).
3. Faça commit das suas alterações (git commit -m 'Adiciona nova feature').
4. Faça push para a branch (git push origin feature/nova-feature).
5. Abra um Pull Request.