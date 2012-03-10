-module(grocery_list).
-export([total/1]).
% This function takes a list of products with quantiies and price and returns item and total price
total(ItemList) -> [{Product, Quantity * Price} || {Product, Quantity, Price} <- ItemList].
