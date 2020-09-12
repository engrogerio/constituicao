server {
  listen 80 default_server;
  
  listen [::]:80 default_server;  
  
  root /var/www/constituicao.com;  
  
  index index.html;  
  
  server_name constituicao.com www.constituicao.com;  
  
  location / {
    try_files $uri $uri/ =404;
  }
}
