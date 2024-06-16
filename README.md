
# Uruchomienie projektu

## Uruchomienie Frontend

1. Otwórz terminal.

2. Przejdź do folderu `Projekt_BAW-frontend` projektu:
   ```bash
   cd Projekt_BAW-frontend
   ```

3. Zainstaluj zależności i uruchom aplikację:
   ```bash
   npm install
   npm start
   ```

4. Otwórz przeglądarkę internetową i przejdź do `http://localhost:3000/`, aby wyświetlić frontend.

## Uruchomienie Backend

1. Otwórz inny terminal.

2. Przejdź do folderu `Projekt_BAW-backend` projektu:
   ```bash
   cd ../Projekt_BAW-backend
   ```

3. Zainstaluj zależności backendu:
   ```bash
   composer install
   ```

4. Uruchom serwer backend:
   ```bash
   php artisan serve
   ```

## Uwaga dotycząca SSL

Dla aplikacji webowej należy wystawić certyfikat SSL i skonfigurować szyfrowanie połączeń za pomocą protokołu HTTPS, co zapewnia bezpieczeństwo danych i wiarygodność witryny.
