# L01 — Суурь үнэлгээ

## 1. Агуулахын үндсэн ойлголт

- **Орлого:** бараа агуулахад орж ирэх хөдөлгөөн.
- **Зарлага:** бараа агуулахаас гарах хөдөлгөөн.
- **Үлдэгдэл:** тухайн агуулахад одоо байгаа барааны тоо хэмжээ.

## 2. JavaScript туршилт

Файл: `docs/examples/filter-low-stock.js`

Ажиллуулах: `node docs/examples/filter-low-stock.js`

Бодит гаралт:
- A02 Үзэг - 3 ширхэг
- A04 Хавтас - 2 ширхэг

Төлөв: PASS

## 3. Python туршилт

Файл: `docs/examples/filter_low_stock.py`

Ажиллуулах: `python docs/examples/filter_low_stock.py`

Бодит гаралт:
- A02 Үзэг - 3 ширхэг
- A04 Хавтас - 2 ширхэг

Төлөв: PASS

JavaScript болон Python дээр ижил өгөгдөл ашиглахад ижил үр дүн гарсан.

## 4. SQL JOIN сургалтын жишээ

Энэ жишээнд `products` болон `stocks` хүснэгтийг SKU-аар холбосон.

SQL файл: `docs/examples/product-stock-join.sql`

Ажиллуулсан өгөгдлийн сан: `l01_join_demo`

Ашигласан query:

    SELECT
        products.sku,
        products.product_name,
        stocks.quantity
    FROM products
    INNER JOIN stocks
        ON products.sku = stocks.sku
    ORDER BY products.sku;

MySQL 9.6.0 дээр бодитоор ажиллуулсан үр дүн:

| sku | product_name | quantity |
|---|---|---:|
| A01 | Цаас | 10 |
| A02 | Үзэг | 3 |
| A03 | Дэвтэр | 7 |

Төлөв: PASS — 3 мөр өгөгдөл зөв гарсан. UTF-8 тохиргоотой үед Монгол нэршил зөв харагдсан.

## 5. Мэдэхгүй болон сайжруулах зүйлс

1. INNER JOIN болон LEFT JOIN-ийн ялгааг илүү сайн ойлгох.
2. Агуулах, бараа, хөдөлгөөний хүснэгтүүдийн холбоог судлах.
3. GitHub дээр issue → branch → commit → pull request → review дарааллыг зөв ашиглах.

## 6. Хувийн зорилго

1. JavaScript болон Python ашиглан өгөгдөл шүүж сурах.
2. SQL JOIN-ийг өөрийн жишээгээр тайлбарлаж, ажиллуулах.
3. GitHub дээр ажлын өөрчлөлт бүрийг issue болон PR-тэй холбох.

## 7. Дүгнэлт

Энэ лабораторид агуулахын орлого, зарлага, үлдэгдлийн ойлголтыг тодорхойлж, JavaScript болон Python-оор бага үлдэгдэлтэй барааг шүүж шалгав. Мөн MySQL 9.6.0 дээр `products` болон `stocks` хүснэгтийг INNER JOIN ашиглан холбож, 3 мөр үр дүн зөв гарсныг баталгаажуулав.

## 8. L08 — Агуулахын өгөгдлийн сангийн туршилт

L08-ийн бодит өгөгдлийн сангийн бүтэц, хүснэгтүүд, SQL тестийн үр дүнг тусдаа баримтжуулсан.

Дэлгэрэнгүй: `docs/database-design.md`

Энэ нь L01-ийн сургалтын `products` + `stocks` JOIN жишээнээс тусдаа бөгөөд агуулахын бодит `products`, `warehouse_documents`, `document_items` хүснэгтүүдийг хамарна.