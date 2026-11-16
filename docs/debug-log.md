# L06 — Алдаа оношилгооны тэмдэглэл

## 1. Судалсан асуудал

GitHub Pull Request нээсэн боловч PR дээр өөрчлөгдсөн файл харагдахгүй байх асуудлыг судлав.

## 2. Жишээ болсон бодит repository-ийн ажиглалт

Өмнөх шалгалтаар PR #8-ийн мэдээлэл:
- Base branch: `main`
- Head branch: `fix/l07-traceability`
- Changed files: `0`
- Additions: `0`
- Deletions: `0`

Энэ нь PR нээсэн ч GitHub харьцуулах хоёр branch-ийн хооронд шинэ өөрчлөлт олж хараагүй гэсэн үг. Энэ нь кодын merge conflict болсон гэсэн үг биш.

## 3. Боломжит шалтгаан

1. Файл өмнө нь main-д орсон тул дахин өөрчлөлт гэж харагдахгүй.
2. Өөрчлөлт буруу branch дээр хийгдсэн.
3. PR-ийн base/head чиглэл буруу сонгогдсон.
4. Commit нь бодит файлын өөрчлөлт агуулаагүй.

## 4. Шалгах алхам

1. PR-ийн base болон compare branch-ийг шалгах.
2. Files changed таб дээр өөрчлөлтийн тоог харах.
3. Compare view дээр хоёр branch-ийн ялгааг шалгах.
4. Шинэ branch дээр бодит файл өөрчилж, commit үүсгэсний дараа PR нээх.
5. Review иртэл merge хийхгүй байх.

## 5. Одоогийн дүгнэлт

PR #8-ийн 0 changed files гэдэг нь ажиглагдсан баримт. Энэ нь merge conflict биш, харин харьцуулах branch хооронд шинэ diff байхгүй асуудал юм. Тиймээс алдааны нэрийг зөв оношлох нь чухал.

## 6. Туршилтын төлөв

- PR #8-ийн diff-ийн тоог өмнөх repository шалгалтаар ажигласан.
- Тусгай шинэ merge conflict үүсгэж туршаагүй.
- Бодит conflict-ийг үүсгэсэн, шийдсэн гэж энд тэмдэглээгүй.
- Шинэ PR дээр бодит файлын diff гарсныг PR нээсний дараа дахин шалгана.

## 7. Эх сурвалж

- [GitHub Docs — About pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
- [GitHub Docs — Merge conflicts](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts)

## 8. Миний дүгнэлт

PR нээх нь дангаараа файл өөрчлөгдсөнийг батлахгүй. Base/head branch болон бодит diff-ийг шалгах хэрэгтэй. 0 changed files байвал merge хийхээс өмнө шалтгааныг олж, бодит өөрчлөлттэй PR гаргах нь зөв.

## 9. Бодит Merge Conflict туршилт

### 9.1 Туршилтын зорилго

Git-ийн хоёр branch дээр нэг файлд ижил мөрийг өөр өөрөөр өөрчлөхөд merge conflict үүсэх эсэхийг шалгав.

### 9.2 Туршилтын явц

1. `main` branch дээр `conflict-demo.txt` файл үүсгэж commit хийсэн.
2. `test/conflict-a` branch дээр файлын мөрийг `Change from branch A` болгож өөрчилсөн.
3. `test/conflict-b` branch дээр ижил мөрийг `Change from branch B` болгож өөрчилсөн.
4. `test/conflict-a` дээр `git merge test/conflict-b` командыг ажиллуулсан.

### 9.3 Илэрсэн алдаа

Git дараах алдааг харуулсан:

`CONFLICT (content): Merge conflict in conflict-demo.txt`

Автоматаар нэгтгэх боломжгүй болсон.

### 9.4 Алдааг шийдвэрлэсэн нь

Файлыг гараар засаж дараах мөрийг үлдээсэн:

`Change from branches A and B`

Дараа нь дараах командуудыг ажиллуулсан:

- `git add conflict-demo.txt`
- `git commit -m "Resolve merge conflict"`

### 9.5 Туршилтын үр дүн

- Conflict бодитоор үүссэн.
- Хоёр branch-ийн өөрчлөлтийг гараар нэгтгэсэн.
- Шийдвэрлэсэн commit: `8acb5b4`
- `git status` — working tree clean.
- Файлын эцсийн агуулга зөв хадгалагдсан.

**Төлөв: PASS**

### 9.6 Дүгнэлт

Хоёр branch нэг файлын ижил мөрийг өөр өөрөөр өөрчилсөн үед Git merge conflict үүсгэж байгааг туршилтаар батлав. Conflict-ийг гараар шийдвэрлэж, commit хийснээр merge ажиллагааг амжилттай дуусгав.
