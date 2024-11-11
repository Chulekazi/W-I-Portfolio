-> start
=== start ===
Aetheria, a cold morning.
The department of the town of Aetheria.
-> Aetheria 

===Aetheria===
Aetheria is a forest floating in the sky where mages live, with smaller village islands that surround Aetheria.
Luna, a novice mage who recently graduated from secondary mage school, resides in a tiny hut in the center of the forest, a busy area where mages learn how to control their magic, or where mages shop at mystical markets and try sky fishing. She's never tried exploring the forest, but she decided today was the day.
*[Go outside.] ->outside

*[Stay in.] Actually nevermind. ->stay

==outside==
Opening the door, a calm breeze brushes past Luna. But the opportunities are endless. There's so much to do.

*[walk around]

- ->fishing

==fishing==
Walking past cheerful chatter of experienced mages carrying buckets full of fish, Luna saw a bunch of mages holding their arms in the air and catching a handful of fish.

*[try sky fishing]

Luna lifts her hands and tries to catch one, but it immediately flaps out of her hands.

"Tsk."

She tries catching fish again, but falls to the ground.

Guess this wasn't Luna's calling.
-> continue

===continue==
She strolls along the wooden path, admiring the marketplace. One trader had an amulet that wards off negative energy and evil spirits, another had moonflower petals used in powerful potions and another had a book filled with ancient knowledge and lost spells.

*[Buy Amulet of Aegis] ->amulet

*[Buy Moonflower Petals] ->petals

*[Buy Book of Forgetten Lore] ->book

VAR gold = 20

==amulet==
Luna has {gold} gold.
* {gold >= 20} [Buy the amulet for 20 gold] -> buy_amulet

* {gold < 20} [She doesn't have enough gold.] ->leave_shop

=== buy_amulet ===
~ gold -= 20
Luna buys an amulet. She has {gold} gold coins remaining.
-> leave_shop



==petals==
* {gold >= 5} [buy moonflower petals for 5 gold] ->buy_petals
*[Keep shopping] ->shop_some_more

* {gold < 5} [She doesn't have enough gold.] ->leave_shop

=== buy_petals ===
~ gold -= 5
Luna buys moonflower petals. She has {gold} gold remaining.
*[Keep shopping] ->shop_some_more
-> leave_shop

==book==
* {gold >= 30} [Buy a book for 30 gold] -> buy_book

=== buy_book ===
Luna doesn't have enough gold to buy the book.

-> leave_shop

===shop_some_more===
*[Buy Amulet of Aegis] ->amulet

*[Buy Moonflower Petals] ->petals

*[Buy Book of Forgetten Lore] ->book


===leave_shop===
Luna leaves the market.
->END
==stay==
Luna decides to stay in another day.

-> END