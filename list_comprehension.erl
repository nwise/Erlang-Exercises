Fibs = [1,1,2,3,5].
Double = fun(X) -> X * 2 end.
lists:map(Double, Fibs).

[Double(X) || X <- Fibs].

Cart = [{pencil, 4, 0.25}, {pen, 1, 1.20}, {paper, 2, 0.20}].
WithTax = [{Product, Quantity, Price, Price * Quantity * 0.80} || {Product, Quantity, Price} <- Cart].

Catalog = [{Product, Price} || {Product, _, Price} <- Cart].
DiscountCatalog = [{Product, Price / 2} || {Product, Price} <- Catalog].
