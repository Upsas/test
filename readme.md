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

Vykdykite duomenų bazės perkėlimus (** prieš perkeldami nustatykite duomenų bazės ryšį .env **) taip sugeneruojami duomenys į duomenų bazė testavimui.

    php artisan migrate:fresh --seed

Sukuriamas raktas, kad veiktų programa

    php artisan key:generate

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

# Sistemos duomenys ir veikimas

    | Controllers   | Repositories  | Views     | Service  | Models |
    | ------------- | ------------- | --------- | -------- | ------ |
    | Visit         | Visit         | Visit     | Visit    | Visit  |
    | Customer      | Customer      | Customer  | Customer | User   |
    | Display       | Display       | Display   | Display  |        |

    * Controllers yra kaip "pasiuntiniukai" juose nevygdoma jokia logika. Jie skirti nukreipti tam tikrus duomenis ir puslapius ir reikiamas vietas.
    * Repositories vyksta visos užklausos su duomenų bazę.
    * Views laikomi visi išvesties puslapiai ir jų dalys.
    * Service atliekama visa logiką.
    * Models skirti susijungti su duomenų bazė, nustatyti ryšius ir tam tikrą logiką su duomenų bazę.

## Ekrano lentos reikalavimai

    * Ekrane rodoma 5 dabartiniai ir 5 artėjantys susitikimai. Tai atlieka repositories (naudojant užklausas atrenkami reikiami duomenys), controllers(duomenys pasiunčiami į tam tikrą puslapyje ir jį užkraunama) ir views (išvedami duomenys)
    * Ekranas atsinaujina kas 5 s. tam panaudotas meta tag.
    * Ekranas pasiekiamas tik registruotiems vartotojams. Pasinaudota laravel autentifikacija.

## Vizito rezervavimo reikalavimai

    * Vartotjas pasitikrina datą ar yra laisvų susitikimų ir jeigu yra jis užsirezervuoja. Užsirezervavus išvedamas registracijos id numeris su kuriuo galima pasitikrinti laiką ir atšaukti susitikimą. Repositories (pagal datą atrenka susitikimą), rezervavus susitikimą pasinaudojomas service (pakeičiama iš 0 į 1 duomenų bazėje ir prisikiriamas rezervacijos id), taip matome, kad atlikta rezervacija ir priskiriamas id. Tada controlleris (išveda reikiamą puslapy ir id);
    * Pasinaudojus id numerį vartotojas gali matyti kiek liko iki susitikimo. Service (įvedamas id ir atliekama validacija), tada respotories pagalba (atrenkamas vizitas pagal id) ir controlleris (išveda laiką ir atskirą puslapy su reikiamais duomenimis).
    * Išvestame puslapyje yra funkcija atšaukti vizitą. Service (pakeičiama reposotires pagalba iš 1 į 0 duomenų bazėje) ir taip žinome, kad vizitas neberezervuotas.

## Kliento apsilankymo valdymo reikalavima

    * Specialistas įvedamas tiesogiai į duomenų bazę arba pasinaudojant php tinker (žiūrėti viršuje).
    * Specialistas mato tik rezervuotus vizitus. Tam pasinaudojama reposotires(iš duomenų bazės atrenkama duomenis kurie yra su reservacija 1 ir specialisto id numeriu). Ir tada controlerio pagalba išvedami duomenis į ekraną.
    * Specialistui suteikiamas funkcionalumas pažymėti pradžią, pabaigą ir atšaukti vizitą. Tam pasinaudojamas service (kai pažymimas prasidėjas vizitas duomenų bazėje pakeičiama iš 0 į 1, taip pat kaip ir atšaukiamas vizitas jo rezervacija pakeičiama iš 1 į 0 ), tačiau kai vizitas bagiasi jis tiesog ištrinimas.
