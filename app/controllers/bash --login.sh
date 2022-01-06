bash --login
Install PostgreSQL on Ubuntu :-
Step 1:-
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

Step 2:-
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

Step 3:-
sudo apt-get update

Step 4:-
sudo apt-get install postgresql    
or     
sudo apt-get install postgresql-10
Connect to the PostgreSQL database server via psql
sudo -i -u postgres
psql


Remove Postgres installation

sudo apt-get --purge remove postgresql
dpkg -l | grep postgres
sudo apt-get --purge remove postgresql postgresql-doc postgresql-common
sudo rm -rf /var/lib/postgresql/
sudo rm -rf /var/log/postgresql/
sudo rm -rf /etc/postgresql/
sudo deluser postgres
 





Set User Name and password Sessting:-
ALTER USER postgres PASSWORD 'postgres';
Restore data base
Sudo su postgres
pg_restore --dbname=newdvdrental --verbose c:\pgbackup\dvdrental.tar
grant all privileges on database hoast_db to postgres;
grant all privileges on database new_hoast_live_db to postgres;


psql --username postgres --dbname new_hoast_live_db -f my_hoastdb_15nov.dump
pg_restore -d new_hoast_live_db my_hoastdb_15nov.dump

 sudo dpkg -i --force-all


