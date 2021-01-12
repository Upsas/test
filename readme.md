# Pradžia

## Įdiegimas

Prieš pradėdami, patikrinkite oficialų laravel v7 diegimo vadovą, kokie yra serverio reikalavimai [Official Documentation](https://laravel.com/docs/6.x/installation#installation)

Klonuokite saugyklą

    git clone https://github.com/Upsas/test.git

Prejunkite į saugojimo aplankalą

    cd test

Įdiekite visas priklausomybes naudodami composer

    composer install

Įdiekite visas priklausomybes naudodami npm

    npm install

Vykdykite duomenų bazės perkėlimus (** prieš perkeldami nustatykite duomenų bazės ryšį .env **)

    php artisan migrate

Paleiskite vietinio kūrimo serverį

    php artisan serve

Dabar prie serverio galite prisijungti šiuo adresu: http://127.0.0.1:8000

## Programos veikimas

### Klientas

Klientas pasirenka jam tinkamą datą ir patikrina ar yra laisvų specialistų. Jeigu randą sau tinkamą rezervacijos laiką, rezervuojam jam vieta ir priskiriamas rezervacijos kodas pagal kurį būtų galima vėliau pasitikrinti savo rezervaciją, bei atšauktį ją.

### Specialistas

Specialistas negali užsiregistruoti jis pridedamas prie sistemos.

Pridedamas specialistas panaudojant php artisan tinker

    $user = new App\User();
    $user->password = Hash::make('pasirenkamas slaptažodis');
    $user->email = 'email@pavizdys.com';
    $user->name = 'Vardas';
    $user->lastname = 'Pavardenis';
    $user->save();

Prisijungęs specialistas gali matytį jau užrezervuotas lankymo dienas ir valandas, be to gali pridėti laiką ir dieną kuriuo metu gali priimti klientą. Taip pat specialistas turi savo vizitų valdymą sistemą. Jis gali jau užrezervuotus susitikimus atšaukti. Specialistas turi funkciją pažymėtį jau prasidėjusių susitkimų pradžią ir pabaigą.

### Rodymo ekranas

Rodymo ekranas rodo kokie šiuo metu susitikimai vykstą ir kokie artimiausi yra. Atsinaujinamas kas 5s.
