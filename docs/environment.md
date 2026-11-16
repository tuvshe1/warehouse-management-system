# L02 — Хөгжүүлэлтийн орчин

## 1. Ашиглаж буй орчин

| Программ | Хувилбар | Баталгаажуулалт |
|---|---|---|
| Үйлдлийн систем | Windows 11 | Компьютерийн орчин |
| Windows PowerShell | 5.1 | PowerShell орчин |
| Git | 2.53.0.windows.3 | Terminal дээр шалгасан |
| Node.js | v24.13.0 | Terminal дээр шалгасан |
| Python | 3.14.3 | Terminal дээр шалгасан |
| MySQL Server | 9.6.0 | MySQL Server дээр шалгасан |

Шалгасан огноо: 2026-11-16

## 2. Хувилбар шалгах команд

PowerShell нээгээд дараах командуудыг ажиллуулна.

```powershell
git --version
node --version
python --version
```

MySQL хувилбарыг шалгахдаа MySQL Workbench эсвэл MySQL client ашиглана.

## 3. Жишээ код ажиллуулах дараалал

1. Repository-г компьютертоо clone хийнэ.
2. Repository хавтас руу орно.
3. JavaScript жишээг `node .\docs\examples\filter-low-stock.js` командаар ажиллуулна.
4. Python жишээг `python .\docs\examples\filter_low_stock.py` командаар ажиллуулна.
5. SQL жишээг MySQL client дээр ажиллуулна.

## 4. GitHub ажлын дараалал

1. Issue нээж хийх ажлаа тодорхойлно.
2. Issue-д зориулсан feature branch үүсгэнэ.
3. Файлаа өөрчилж, ойлгомжтой commit message бичнэ.
4. Pull Request нээнэ.
5. Өөр хүн өөрчлөлтийг уншиж Peer Review хийнэ.
6. Саналд хариу өгч, шаардлагатай засварыг хийсний дараа merge хийнэ.

## 5. Нууц мэдээллийн хамгаалалт

- `.env`, нууц үг, token, database dump-ийг GitHub-д оруулахгүй.
- Нууц мэдээллийг код дотор шууд бичихгүй.
- GitHub-д зөвхөн төслийн шаардлагатай файлуудыг байршуулна.

## 6. Локал орчны бодит шалгалт

Шалгасан огноо: 2026-11-16

### Хувилбар шалгасан командууд

```powershell
git --version
node --version
python --version
```

### JavaScript бодит туршилт

Команд:

```powershell
node .\docs\examples\filter-low-stock.js
```

Бодит гаралт:

```text
A02 Үзэг - 3 ширхэг
A04 Хавтас - 2 ширхэг
```

### Python бодит туршилт

Команд:

```powershell
python .\docs\examples\filter_low_stock.py
```

Бодит гаралт:

```text
A02 Үзэг - 3 ширхэг
A04 Хавтас - 2 ширхэг
```

### Туршилтын дүгнэлт

JavaScript болон Python дээр ижил өгөгдлийг шүүхэд ижил үр дүн гарсан. Үлдэгдэл 5-аас бага A02 болон A04 бараа зөв шүүгдсэн.
