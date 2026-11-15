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
