Não esquecer de instalar o PostgreSQL:
 sudo apt install postgresql postgresql-client -y
 
 sudo -u postgres psql
 CREATE DATABASE sistemaOnibus;
 \c sistemaonibus;
 \i /home/carolina/Trabalho3BD/esquema.sql
 \i /home/carolina/Trabalho3BD/insercoes.sql
 CREATE USER app_user WITH PASSWORD 'trabalhobd';
 GRANT ALL PRIVILEGES ON DATABASE sistemaonibus TO app_user;
 GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO app_user;
 GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO app_user;

 ----> ai pode rodar qualquer comando de sql e boa ja pode fazer coisas no banco 
 
Para rodar a aplicação:
 pip3 install psycopg2-binary
 python3 app.py

PS: voce tem que dar os comandos para criar o banco e criar usuario e colocar a senha e usuario: 
user="app_user",
password="trabalhobd" 
se voce seguir todos os comandos que eu deixei aqui nao precisa se preocupar com isso
