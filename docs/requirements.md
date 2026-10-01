# L04 Шаардлага

## US-01 Бараа бүртгэх

As a manager, I want to register a new product, so that the product can be used in the warehouse.

### Acceptance Criteria

- AC-01-01: Шинэ SKU болон шаардлагатай мэдээлэлтэй бол бараа бүртгэгдэнэ.
- AC-01-02: Давхар SKU оруулбал шинэ бараа бүртгэгдэхгүй.
- AC-01-03: Шаардлагатай мэдээлэл дутуу бол бараа бүртгэгдэхгүй.

## US-02 Бараа орлогод бүртгэх.

As a cashier, I want to record incoming products, so that the stock balance increases correctly.

### Acceptance Criteria

- AC-02-01: Тоо хэмжээ 0-ээс их бол үлдэгдэл нэмэгдэнэ.
- AC-02-02: Тоо хэмжээ 0 бол бүртгэл хийгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.
- AC-02-03: Сөрөг тоо оруулбал бүртгэл хийгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.

## US-03 Бараа зарлагад бүртгэх

As a cashier, I want to record outgoing products, so that the stock balance decreases correctly.

### Acceptance Criteria

- AC-03-01: Үлдэгдэл хүрэлцээтэй бол зарлага бүртгэгдэж, үлдэгдэл буурна.
- AC-03-02: Үлдэгдэл хүрэлцэхгүй бол зарлага бүртгэгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.
- AC-03-03: Тоо хэмжээ 0 эсвэл сөрөг бол зарлага бүртгэгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.

## US-04 Үлдэгдэл шалгах

As a manager, I want to check product balance, so that I can know the current stock.

### Acceptance Criteria

- AC-04-01: Бүртгэлтэй SKU оруулахад тухайн барааны үлдэгдэл харагдана.
- AC-04-02: Үлдэгдэл 0 бол 0 гэж харагдана.
- AC-04-03: Бүртгэлгүй SKU оруулахад бараа олдсонгүй гэсэн мэдээлэл гарна.

## US-05 Бага үлдэгдэл илрүүлэх

As a manager, I want to see products below the stock threshold, so that I can identify products that need restocking.

### Acceptance Criteria

- AC-05-01: Үлдэгдэл 5-аас бага бараа бага үлдэгдлийн жагсаалтад орно.
- AC-05-02: Үлдэгдэл 5 эсвэл түүнээс их бол бага үлдэгдлийн жагсаалтад орохгүй.
- AC-05-03: Үлдэгдэл 0 бол бага үлдэгдлийн жагсаалтад орно.

## US-06 Баримт шалгах

As a cashier, I want to check document information, so that incorrect records are not saved.

### Acceptance Criteria

- AC-06-01: Шаардлагатай мэдээлэл бүрэн бол баримтыг хүлээн авна.
- AC-06-02: Шаардлагатай мэдээлэл дутуу бол баримтыг хадгалахгүй.
- AC-06-03: Тоо хэмжээ 0 эсвэл сөрөг бол баримтыг хадгалахгүй.

## US-07 Баримт засах

As a manager, I want to edit a warehouse document, so that incorrect information can be corrected.

### Acceptance Criteria

- AC-07-01: Засах боломжтой баримтын мэдээллийг өөрчилж хадгалж болно.
- AC-07-02: Буруу мэдээлэл оруулбал өөрчлөлт хадгалагдахгүй.
- AC-07-03: Хүчингүй өөрчлөлт хийсэн үед өмнөх зөв мэдээлэл болон үлдэгдэл өөрчлөгдөхгүй.

## US-08 Барааны бүртгэл хайх

As an admin, I want to search product records, so that I can find product information quickly.

### Acceptance Criteria

- AC-08-01: Бүртгэлтэй SKU хайвал тухайн барааны мэдээлэл гарна.
- AC-08-02: Бүртгэлгүй SKU хайвал бараа олдсонгүй гэсэн мэдээлэл гарна.
- AC-08-03: Хоосон хайлт хийвэл хайх нөхцөл оруулахыг сануулна.

## Бизнесийн дүрэм

1. SKU давхар бүртгэгдэхгүй.
2. Тоо хэмжээ 0 бол орлого болон зарлага бүртгэгдэхгүй.
3. Сөрөг тоо хэмжээ бүртгэгдэхгүй.
4. Үлдэгдэл хүрэлцэхгүй бол зарлага бүртгэгдэхгүй.
5. Бүртгэл амжилтгүй болсон үед өмнөх үлдэгдэл өөрчлөгдөхгүй.
6. Бага үлдэгдлийн босго 5 байна.

## Миний дүгнэлт

Энэ хичээлээр User Story болон Acceptance Criteria бичиж сурсан.

Мөн 0, сөрөг тоо, давхар SKU болон үлдэгдэл хүрэлцэхгүй нөхцөлийг тодорхойлсон.

Шаардлагуудыг дараагийн шатанд системийн үйл ажиллагаатай холбоно.
