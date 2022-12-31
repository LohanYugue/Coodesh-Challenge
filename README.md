# Coodesh-Challenge

Neste desafio podemos rodar ele diretamente usando o terraform a partir de sua máquina local ou utilizando o Jenkins

## Localmente:

Antes de iniciar altere o backend para um S3 de seu ambiente ou se preferir remova para salvar o state do terraform localmente. Outra alteração que deverá ser feita é a escolha do nome do bucket em que irá hospedar essa aplicação, para isso  basta alterar o valor da variável "bucket_name, feito isso dê início ao projeto":

```
terraform init
```

Rode o plan do terraform

```
terraform plan -out calculadora
```

Por fim dê o apply
```
terraform apply calculadora
```

Com o bucket criado via TF, agora basta seguir com o build da aplicação e jogar o conteúdo da pasta "build" dentro do bucket

## Jenkins:

Nesse exemplo é necessário que tenha um servidor Jenkins configurado e que tenha acesso ao ambiente da AWS em que será feito o deploy da aplicação

Basta configurar a pipeline com o repositório do GitHUb e passar o caminho do script "Jenkinsfile", a única alteração que precisa ser feita é o nome do bucket escolhido
