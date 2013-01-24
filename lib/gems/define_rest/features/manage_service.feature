Feature: Users can manage REST services
  In order to manage REST services
  As an application admin
  I want to be able to list, create, change and delete REST services

  Scenario: User creates new service
    Given service with name "Create Booking" does not exist
    When I add new service with name "Create Booking"
    Then service with name "Create Booking" should exist