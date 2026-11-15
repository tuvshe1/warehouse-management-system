products = [
    {"sku": "A01", "name": "Цаас", "balance": 10},
    {"sku": "A02", "name": "Үзэг", "balance": 3},
    {"sku": "A03", "name": "Дэвтэр", "balance": 7},
    {"sku": "A04", "name": "Хавтас", "balance": 2},
    {"sku": "A05", "name": "Баллуур", "balance": 6},
]

low_stock = [product for product in products if product["balance"] < 5]
for product in low_stock:
    print(f'{product["sku"]} {product["name"]} - {product["balance"]} ширхэг')
