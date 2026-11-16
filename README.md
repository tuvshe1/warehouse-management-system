# Warehouse Management System

## Төслийн зорилго

Агуулахын барааны бүртгэл, орлого, зарлага, үлдэгдлийг ойлгож, шаардлага болон GitHub-ийн ажлын урсгалыг дадлагаар сурах сургалтын төсөл.

## Хамрах хүрээ

- Бараа болон SKU бүртгэх
- Орлого, зарлагын хөдөлгөөн бүртгэх
- Үлдэгдэл болон бага үлдэгдэл шалгах
- Баримт шалгах, засах
- Бараа хайх
- Шаардлага, тестийн нөхцөл, эрсдэл, AI/debug тэмдэглэл хөтлөх

## Ашиглах технологи

- JavaScript (Node.js)
- Python
- MySQL / SQL
- Git, GitHub

## Баримт бичиг

| Файл | Зориулалт |
|---|---|
| [docs/baseline.md](docs/baseline.md) | L01 суурь ойлголт ба туршилт |
| [docs/environment.md](docs/environment.md) | L02 хөгжүүлэлтийн орчин |
| [docs/problem.md](docs/problem.md) | L03 асуудал, оролцогч, процесс |
| [docs/requirements.md](docs/requirements.md) | L04 8 User Story, 24 Acceptance Criteria |
| [docs/backlog.md](docs/backlog.md) | L05 ажлын төлөвлөгөө |
| [docs/risks.md](docs/risks.md) | L05 эрсдэлийн төлөвлөгөө |
| [docs/ai-log.md](docs/ai-log.md) | L06 AI зөвлөгөө ба шалгалт |
| [docs/debug-log.md](docs/debug-log.md) | L06 алдаа оношилгоо |
| [docs/traceability.md](docs/traceability.md) | L07 Story–AC уялдаа |
| [docs/reviews/G1.md](docs/reviews/G1.md) | G1 нотолгооны индекс |
| [docs/database-design.md](docs/database-design.md) | L08 өгөгдлийн сангийн загвар ба MySQL туршилт |

## L01 жишээ ажиллуулах

JavaScript: `node docs/examples/filter-low-stock.js`

Python: `python docs/examples/filter_low_stock.py`

SQL JOIN сургалтын жишээ: `docs/examples/product-stock-join.sql`

## L08 өгөгдлийн сан

Үндсэн SQL загвар: `docs/examples/warehouse-schema.sql`

MySQL туршилтын үр дүн: [docs/database-design.md](docs/database-design.md)

## Ажлын төлөв

Энэ repository нь сургалтын баримт бичиг болон жишээ код агуулна. Кодын жишээ бүрийг локал орчинд ажиллуулж, үр дүнг баталгаажуулсны дараа л PASS гэж тэмдэглэнэ. Peer Review болон G1 үнэлгээг зөвхөн бодитоор хийгдсэний дараа бүртгэнэ.
