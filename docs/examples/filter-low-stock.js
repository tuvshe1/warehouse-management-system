const products = [
  { sku: "A01", name: "Цаас", balance: 10 },
  { sku: "A02", name: "Үзэг", balance: 3 },
  { sku: "A03", name: "Дэвтэр", balance: 7 },
  { sku: "A04", name: "Хавтас", balance: 2 },
  { sku: "A05", name: "Баллуур", balance: 6 }
];

const lowStock = products.filter((product) => product.balance < 5);
for (const product of lowStock) {
  console.log(`${product.sku} ${product.name} - ${product.balance} ширхэг`);
}
