Feature: TM NZ APIs

    @demo-test
  Scenario Outline: Verify Category Details API for TMS
    When the users want to get details on the <categoryName> with <categoryId>
    Then response code is 200
    And  response has Category Name as <categoryName>
    And response has canRelist as <canRelist>
    And promotion with option <promotions> contains description as <partialDescriptionText>
    Examples:
      | categoryId |  categoryName       |  canRelist   |   promotions    |     partialDescriptionText  |
      | 6327       |  Carbon credits     |   true       |  Gallery        |     2x larger image         |
      | 6328       |  Badges             |   true       |  Basic          |     Lowest position         |
