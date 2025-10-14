var totalPrice = 21;
var ShippingTotal;

if (totalPrice > 20) {
    ShippingTotal = 0
} else {
    ShippingTotal = 5
}

if (totalPrice <= 20) {
    ShippingTotal = 5
} else {
    ShippingTotal = 0
}

console.log("shipinf cost woukf be: ", ShippingTotal)