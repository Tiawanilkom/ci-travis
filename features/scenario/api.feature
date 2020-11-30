Feature: Post JsonPlaceHolder

  Scenario: Demonstrate setting the JSON body with a docstring
    Given I send and accept JSON
    When I set JSON request body to:
    """
    {
      "title": "foo",
      "body":  "bar",
      "userId": 2
    }
    """
    And  I send a POST request to "http://jsonplaceholder.typicode.com/posts"
    Then the response status should be "201"
    And  the JSON response should have "id" of type numeric and value "101"
    And  the JSON response should have "title" of type string and value "foo"
    And  the JSON response should have "body" of type string and value "bar"
    And  the JSON response should have "userId" of type numeric and value "2"
