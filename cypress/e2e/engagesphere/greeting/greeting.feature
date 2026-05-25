Feature: Greeting

    Background: access EngageSphere with the cookies consent banner already accepted
        Given I access the EngageSphere app having already accepted the cookies banner

    @engagesphere
    Scenario: Shows the default greeting
        Then I see the following greeting: Hi there!

    @engagesphere @smoke
    Scenario: Shows a customized greeting
        When I type "<name>" in the name input field
        Then I see the following greeting Hi "<name>"!

    Examples:
        | name       |
        | Alessandro |
        | Squirrel   |