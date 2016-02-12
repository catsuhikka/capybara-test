Feature: Find the Website

Scenario: Search for the website        
	Given I am on the Google homepage
	Then I will search for "Твой дед"
	Then I should see "Твой дед"
	Then I will click the about link