# Використовуємо офіційний образ Nginx
FROM nginx:latest

# Копіюємо HTML та CSS файли у папку Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Відкриваємо порт 8080 для контейнера
EXPOSE 8080

# Запускаємо Nginx, змінюючи порт на 8080
CMD ["nginx", "-g", "daemon off;"]

