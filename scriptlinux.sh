#! /bin/bash

echo "Criando Diretórios:"

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

echo "Criando Grupos:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios:"
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd 12345)
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd 12345)
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd 12345)
useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd 12345) 
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd 12345)
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd 12345)
useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd 12345)
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd 12345)
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd 12345)

echo "Alterando os Grupos dos Diretórios:"

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

echo "Bloqueando acessos por grupos"

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

echo "Adicionando usuários aos seus respectivos grupos"

echo         "ADM"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

echo         "VEN"

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

echo         "SEC"

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "FIM"
