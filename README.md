till = Till.new(Menu.new)
till.create_order
till.add(muffin)
till.add(coffee)
till.generate_receipt
  returns receipt object.


As a coffee shop guy,
So I can add stuff up,
I want to have a till.

As a coffee shop guy,
So I can get the correct price for items,
I want the till to know the menu.

As a coffee shop guy,
So that I can differentiate between customers,
I want to be able to generate a new order.

As a coffee shop guy,
So I can build a customers order,
I want to be able to add items to it from the menu.

As a coffee shop dude,
So I can show a customer their total bill,
I want to be able to generate a receipt.



Till tech test
==============

*Instructions*: Please fork this repo and submit a pull request once you've finished. Then prepare for code review!

![a till](/images/till.jpg)

We want to sell tills to local hipster coffee shop who are finally embracing the 21st century. We need a new till to replace their vintage machines - unfortunately, hipster staff are too cool to learn a new system, so we need you to build something that they will understand.

Specification
-------------

This is what a sample receipt looks like:

![a receipt](/images/receipt.jpg)


Version 1
---------

Implement a system that contains the business logic to produce receipts similar to this, based on a `json` price list and test orders. A sample `.json` file has been provided with the list of products sold at this particular coffee shop.

Here are some sample orders you can try - whether you use this information is up to you:

> **Jane**  
> 2 x Cafe Latte  
> 1 x Blueberry Muffin  
> 1 x Choc Mudcake  
>
> **John**  
> 4 x Americano  
> 2 x Tiramisu  
> 5 x Blueberry Muffin  

Your receipt must calculate and show the correct amount of tax (in this shop's case, 8.64%), as well as correct line totals and total amount. Do not worry about calculating discounts or change yet. Consider what output formats may be suitable.

Version 2
---------

- Add functionality to take payment and calculate correct change.  
- Add functionality to handle discounts - in this example, a 5% discount on orders over $50, and a 10% muffin discount.

Version 3
---------

Implement an user interface that can actually be used as a till.

You may use whatever technologies you see fit.
