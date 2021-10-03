

  
  > Imagine an infinite, two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, live or dead. 
  Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent.
  >
  > At each step in time, the following transitions occur:
  > 1. Any live cell with fewer than 2 live neighbors dies, as if by loneliness.
  > 1. Any live cell with more than three live neighbors dies, as if by overcrowding.
  > 1. Any live cell with 2 or 3 live neighbors lives, unchanged, to the next generation.
  > 1. Reproduction (birth): Any dead cell with exactly 3 live neighbors comes to life.

  Scenario: Empty universe
    Given the following universe:
    """
    """
    Then the next generation MUST be:
    """
    """

  Scenario: Single cell universe
    Given the following universe:
    """
    *
    """
    Then the next generation MUST be:
    """
    """

  Scenario: Block
    Given the following universe:
    """
    **
    **
    """
    Then the next generation MUST be:
    """
    **
    **
    """

  Scenario: Blinker
    Given the following universe:
    """
    .*
    .*
    .*
    """
    Then the next generation MUST be:
    """

    ***

    """
    Then the next generation MUST be:
    """
    .*
    .*
    .*
    """

  Scenario: Glider
    Given the following universe:
    """
    .*
    ..*
    ***
    """
    Then the next generation MUST be:
    """

    *.*
    .**
    .*
    """
    Then the next generation MUST be:
    """

    ..*
    *.*
    .**
    """
    Then the next generation MUST be:
    """

    .*
    ..**
    .**
    """
    Then the next generation MUST be:
    """

    ..*
    ...*
    .***
    """
