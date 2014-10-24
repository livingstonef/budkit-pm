<?php

namespace App\Project;

use Budkit\Application\Support\Service;
use Budkit\Dependency\Container;

class Provider implements Service {

    protected $application;

    public function __construct(Container $application) {
        $this->application = $application;
    }

    public function onRegister() {
        $app = $this->application;
        //Can Include Routes; using $this->application->route->add() or simply \Route::add().
        $app->route
            //->setResourceCallable("App\\Calendar\\Calendar")
            ->attachResource("/calendar", "App\\Calendar\\Calendar"); //collection of events

        //Projects plugin;
        $app->route->add("/projects{format}", "projects", "App\\Project\\Controller\\Project");

        //multiple projects types and status e.g project proposal
        $app->route->attachResource("/project","App\\Project\\Controller\\Project");

        //tasks? tasks are a collection of protocols mark task as results?
        $app->route->attachResource("/task", "App\\Project\\Controller\\Task");

    }

    public function definition() {
        return ["app.register" => "onRegister"];
    }
}