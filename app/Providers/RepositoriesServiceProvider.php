<?php

namespace App\Providers;

use App\Repositories\Customers\CustomerRepository;
use App\Repositories\Customers\CustomerRepositoryInterface;
use App\Repositories\Displays\DisplayRepository;
use App\Repositories\Displays\DisplayRepositoryInterface;
use App\Repositories\Visits\VisitRepository;
use App\Repositories\Visits\VisitRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RepositoriesServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(CustomerRepositoryInterface::class, CustomerRepository::class);
        $this->app->bind(DisplayRepositoryInterface::class, DisplayRepository::class);
        $this->app->bind(VisitRepositoryInterface::class, VisitRepository::class);
    }
}
