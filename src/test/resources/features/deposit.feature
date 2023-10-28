Feature: deposit
  As a customer
  I want to deposit into my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

  Scenario: Deposit more than amount of balance
    When I deposit 500 into ATM
    Then my account balance is 700

  Scenario: Deposit lower than amount of balance
    When I deposit 12 into ATM
    Then my account balance is 212
