## Steps:

- Created DB and connected through env file
- make migrations [companies & employees]
- make model [companies & employees]
- make seeder [User, Company & Employee]

- Install Laravel/UI:
-- composer require laravel/ui
-- php artisan ui bootstrap
-- npm install
-- php artisan ui bootstrap --auth

- Generate Public [CSS/JS] files:
-- npm run development

- make Resource controller [company & employee]:
-- php artisan make:controller CompanyController --resource --model=Company
-- php artisan make:controller EmployeeController --resource --model=Employee

- Migration and seed data
-- php artisan migrate
-- php artisan db:seed




- Disable auth routes: routes > web.php
Auth::routes([
    // To disable routes from default Laravel Auth
    'register' => false,
    'reset' => false,
    'verify' => false,
]);

- Language  [https://laravel.com/docs/8.x/localization]
-- en
-- es 