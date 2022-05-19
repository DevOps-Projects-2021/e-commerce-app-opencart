
echo -e "sudo -i\ncd .."
echo -e "server {\n\t\tlisten 80;\n\tserver_name opencart.coe.com;\n\troot /var/www/html/opencart/upload;\n\tindex index.php index.htm index.html;\n\tlocation / { try_files \$uri \$uri/ /index.php?\$args;\n\t}\n \tlocation ~ .php\$ {\n \tfastcgi_pass unix:/run/php/php8.0-fpm.sock;\n \tfastcgi_index index.php;\n \tfastcgi_read_timeout 240;\n\tfastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;\n \tinclude fastcgi_params;\n\tfastcgi_split_path_info ^(.+.php)(/.+)\$;\n\t}\n}" >> etc/nginx/conf.d/opencart.conf
