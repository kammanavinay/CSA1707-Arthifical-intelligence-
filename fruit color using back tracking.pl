
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(watermelon, green).

fruit_with_color(Color, Fruit) :-
    fruit_color(Fruit, Color).

