# تعليمات تجميع المشروع — Compilation Guide

## البنية الهيكلية للمشروع

```
Rapport droit/
├── main.tex                    ← الملف الرئيسي
└── chapters/
    ├── cover.tex               ← صفحة الغلاف
    ├── introduction.tex        ← المقدمة العامة
    ├── chapitre1.tex           ← الفصل الأول: الإطار المفاهيمي
    ├── chapitre2.tex           ← الفصل الثاني: الإطار القانوني
    ├── chapitre3.tex           ← الفصل الثالث: الحالات المسموح بها
    ├── chapitre4.tex           ← الفصل الرابع: الالتزامات
    ├── chapitre5.tex           ← الفصل الخامس: المسؤولية القانونية
    ├── chapitre6.tex           ← الفصل السادس: دور مفتش الشغل
    ├── chapitre7.tex           ← الفصل السابع: الآثار الاجتماعية
    ├── chapitre8.tex           ← الفصل الثامن: دراسة الحالة
    ├── chapitre9.tex           ← الفصل التاسع: الاجتهاد القضائي
    ├── chapitre10.tex          ← الفصل العاشر: الاختلالات والتوصيات
    └── conclusion.tex          ← الخاتمة والملاحق والمراجع
```

## متطلبات التجميع

### المتطلبات الأساسية
- **توزيع LaTeX:** TeX Live 2022+ أو MiKTeX (Windows)
- **المحرك:** `XeLaTeX` (مطلوب لدعم العربية)
- **الحزم المطلوبة:**
  - `fontspec`, `polyglossia` — الخطوط والعربية
  - `tcolorbox`, `xcolor` — الألوان والصناديق
  - `titlesec`, `fancyhdr` — التنسيق

### الخط المطلوب
- **Amiri** — خط عربي مفتوح المصدر متاح مجاناً:
  - [تحميل من Google Fonts](https://fonts.google.com/specimen/Amiri)
  - أو بديل: `Scheherazade New`، `Traditional Arabic`

## طريقة التجميع

### من سطر الأوامر (PowerShell)
```powershell
cd "c:\Users\elhai\OneDrive\Desktop\Rapport droit"
xelatex main.tex
xelatex main.tex   # مرتين لتحديث الفهرس
```

### من محرر LaTeX (Overleaf / TeXstudio / VSCode)
1. افتح `main.tex`
2. اختر **XeLaTeX** كمحرك للتجميع
3. شغّل التجميع مرتين (للحصول على فهرس صحيح)

## تخصيص الغلاف

افتح `chapters/cover.tex` وعدّل الحقول التالية:
- أسماء الطلاب (ابحث عن `الاسم الكامل للطالب`)
- اسم الأستاذ المشرف
- اسم المؤسسة التعليمية
- السنة الدراسية (إن احتجت)
- لإضافة شعار المؤسسة: أزل علامة `%%` من سطر `\includegraphics`

## ملاحظات مهمة

> تعبئة الفصل الثامن (دراسة الحالة):
> يجب تعبئة `chapters/chapitre8.tex` بمعطيات الوضعية المهنية الخاصة بمجموعتكم
> والإجابة عن أسئلة النقاش الستة.

> إضافة القرارات القضائية:
> في `chapters/chapitre9.tex` يمكن إضافة أرقام وتواريخ قرارات المجلس الأعلى.

> لائحة المراجع:
> تُكمَّل في `chapters/conclusion.tex` بالمراجع الفعلية المستخدمة.

