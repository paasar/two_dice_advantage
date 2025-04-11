# Two Dice Advantage percentages

Compare percentages of success for one die vs. two dice (selecting better result).
This is how advantage is done in D&D 5th edition.

I did this to learn more Prolog.

## Usage

    swipl

    ?- SidesInDice = 2, SuccessIfGTE = 2, advantage(SidesInDice, SuccessIfGTE, R, OneDiceSuccessPercentage, TwoDiceSuccessPercentage).
    SidesInDice = SuccessIfGTE, SuccessIfGTE = 2,
    R = [[1, 1, fail], [1, 2, pass], [2, 1, pass], [2, 2, pass]],
    OneDiceSuccessPercentage = '50.00%',
    TwoDiceSuccessPercentage = '75.00%' .

    ?- advantage_list(4, _).
    2 2 50.00% 75.00%
    3 2 66.67% 88.89%
    3 3 33.33% 55.56%
    4 2 75.00% 93.75%
    4 3 50.00% 75.00%
    4 4 25.00% 43.75%
    true.

## d20

| Sides | Need to throw this or more | One die success % | Two die success % |
| --- | --- | --- | --- |
| 20 | 2 | 95.00% | 99.75% |
| 20 | 3 | 90.00% | 99.00% |
| 20 | 4 | 85.00% | 97.75% |
| 20 | 5 | 80.00% | 96.00% |
| 20 | 6 | 75.00% | 93.75% |
| 20 | 7 | 70.00% | 91.00% |
| 20 | 8 | 65.00% | 87.75% |
| 20 | 9 | 60.00% | 84.00% |
| 20 | 10 | 55.00% | 79.75% |
| 20 | 11 | 50.00% | 75.00% |
| 20 | 12 | 45.00% | 69.75% |
| 20 | 13 | 40.00% | 64.00% |
| 20 | 14 | 35.00% | 57.75% |
| 20 | 15 | 30.00% | 51.00% |
| 20 | 16 | 25.00% | 43.75% |
| 20 | 17 | 20.00% | 36.00% |
| 20 | 18 | 15.00% | 27.75% |
| 20 | 19 | 10.00% | 19.00% |
| 20 | 20 | 5.00% | 9.75% |
