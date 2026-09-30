# L04 User Story ба Acceptance Criteria

## User Story

### US-01 Бараа бүртгэх

As a manager, I want to register a new product, so that the product can be used in the warehouse system.

### Бараа бүртгэх

As a manager, I want to register a new product, so that the product can be used in the warehouse system.

#### Acceptance Criteria

1. Шинэ SKU болон шаардлагатай мэдээлэл оруулсан үед бараа бүртгэгдэнэ.
2. Ижил SKU өмнө нь бүртгэгдсэн бол давхар бараа бүртгэгдэхгүй.
3. Шаардлагатай мэдээлэл дутуу бол бараа бүртгэгдэхгүй.
### Бараа орлогод бүртгэх

As a cashier, I want to record received products, so that the warehouse balance increases correctly.

#### Acceptance Criteria

1. Эерэг тоо оруулсан үед барааны үлдэгдэл нэмэгдэнэ.
2. 0 тоо оруулсан үед үлдэгдэл өөрчлөгдөхгүй.
3. Сөрөг тоо оруулсан үед бүртгэл хийгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.

### Бараа зарлагад бүртгэх

As a cashier, I want to record outgoing products, so that the warehouse balance is updated correctly.

#### Acceptance Criteria

1. Үлдэгдэл хүрэлцэж байвал зарлага бүртгэгдэж, үлдэгдэл хасагдана.
2. Үлдэгдэл хүрэлцэхгүй байвал зарлага бүртгэгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.
3. 0 эсвэл сөрөг тоо оруулсан бол зарлага бүртгэгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.

   
### Үлдэгдэл шалгах

As a manager, I want to check product balance, so that I can know the current stock.

#### Acceptance Criteria

1. Бараа бүртгэлтэй бол одоогийн үлдэгдэл зөв харагдана.
2. Барааны үлдэгдэл 0 байвал 0 гэж харагдана.
3. Бараа бүртгэлгүй бол үлдэгдэл гаргахгүй, алдааны мэдээлэл харуулна.

### Бага үлдэгдэл илрүүлэх

As a manager, I want to see low-stock products, so that I can know which products need restocking.

#### Acceptance Criteria

1. Үлдэгдэл босго хэмжээнээс бага байвал бага үлдэгдлийн жагсаалтад орно.
2. Үлдэгдэл босго хэмжээнээс их буюу тэнцүү байвал бага үлдэгдлийн жагсаалтад орохгүй.
3. Барааны үлдэгдэл 0 байвал бага үлдэгдлийн жагсаалтад орно.

### Баримт шалгах

As a cashier, I want to check a warehouse document, so that incorrect information is not recorded.

#### Acceptance Criteria

1. Шаардлагатай мэдээлэл бүрэн байвал баримт зөвшөөрөгдөнө.
2. Шаардлагатай мэдээлэл дутуу байвал баримт бүртгэгдэхгүй.
3. Буруу тоо оруулсан бол баримт бүртгэгдэхгүй, үлдэгдэл өөрчлөгдөхгүй.

### Баримт засах

As a manager, I want to edit a warehouse document, so that incorrect information can be corrected.

#### Acceptance Criteria

1. Засах боломжтой баримтын мэдээлэл зөв өөрчлөгдөнө.
2. Буруу мэдээлэл оруулсан бол өөрчлөлт хадгалагдахгүй.
3. Баримт засах үед үлдэгдэл буруу өөрчлөгдөхгүй.

### Барааны бүртгэл хайх

As an admin, I want to search products, so that I can quickly find the required product information.

#### Acceptance Criteria

1. Зөв SKU оруулсан үед тухайн барааны мэдээлэл харагдана.
2. Бүртгэлгүй SKU оруулсан үед бараа олдсонгүй гэсэн мэдээлэл гарна.
3. Хоосон хайлт хийсэн үед бүх барааг харуулахгүй, хайлтын нөхцөл шаардлагатай гэж мэдээлнэ.

### Барааны бүртгэл хайх

As an admin, I want to search products, so that I can quickly find the required product information.

#### Acceptance Criteria

1. Зөв SKU оруулсан үед тухайн барааны мэдээлэл харагдана.
2. Бүртгэлгүй SKU оруулсан үед бараа олдсонгүй гэсэн мэдээлэл гарна.
3. Хоосон хайлт хийсэн үед бүх барааг харуулахгүй, хайлтын нөхцөл шаардлагатай гэж мэдээлнэ.
