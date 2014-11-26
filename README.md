# Entity Maintenance Rails Engine

This is a Rails Engine that provides entity management to a Rails Application. Entities can either be a person or an organization and has a list of addresses and contact info.

## Installation
In your Rails project:

- Add entity_maintenance to the Gemfile:
    `gem 'entity_maintenance', :path => '/path/to/entity_maintenance'`
- Run `bundle install`
- Edit config/routes.rb and add this line:
    `mount EntityMaintenance::Engine => "/"`
- The engine contains migrations for the `entity_maintenance_entities`, `entity_maintenance_addresses` and `entity_maintenance_contact_infos` tables. They need to be run in the application's database. To copy these migrations:
    `rake entity_maintenance:install:migrations`
    - If you want to run migrations only from the engine, specify the scope:
        `rake db:migrate SCOPE=entity_maintenance`

## Customizing the views
The engine can also migrate the view files and assets for customization. To copy them to the parent application:

    rails generate entity_maintenance:views

## Customizing the controllers
The engine can also migrate the controller files for customization. To copy them to the parent application:

    rails generate entity_maintenance:controllers

## Entity Maintenance routes
You can view the routes via: `rake routes`.

## Test Application
You can run a sample application with the engine within the project:

- Go to `spec/test_app`
- Run `rails server`




