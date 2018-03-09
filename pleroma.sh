sudo adduser pleroma

sudo usermod -aG sudo pleroma

sudo apt update && sudo apt dist-upgrade && sudo apt install git build-essential openssl ssh sudo letsencrypt && sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list" && wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add - && sudo apt update && sudo apt install postgresql-9.6 && letsencrypt certonly --standalone -d mastodon.creatodon.online && wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb && sudo apt update && sudo apt install elixir erlang-dev erlang-parsetools erlang-xmerl

su -l pleroma -c "git clone https://git.pleroma.social/pleroma/pleroma.git && cd pleroma && mix deps.get && mix generate_config && mv config/{generated_config.exs,prod.secret.exs} && sudo su postgres -c 'psql -f config/setup_db.psql' && MIX_ENV=prod mix ecto.migrate"

sudo apt install nginx && sudo cp /home/pleroma/pleroma/installation/pleroma.nginx /etc/nginx/sites-enabled/pleroma.nginx && sudo vi /etc/nginx/sites-enabled/pleroma.nginx && sudo systemctl restart nginx.service && sudo cp /home/pleroma/pleroma/installation/pleroma.service /etc/systemd/system/pleroma.service && sudo vi /etc/systemd/system/pleroma.service && sudo systemctl enable --now pleroma.service && sudo systemctl start pleroma.service

