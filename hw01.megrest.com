server {
        listen 80;
        listen [::]:80;

        root /home/megan/www/megrest.com;

        index hw01.html;

        server_name hw01.megrest.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
