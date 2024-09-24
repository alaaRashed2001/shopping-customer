
enum OrderStatus {
  displayed,     // عند عرض المنتج للمشتري
  addedToCart,   // عند إضافة المنتج للسلة
  checkout,      // عند الانتقال لمرحلة الدفع
  paymentSuccess,// عند اكتمال الدفع بنجاح
  completed      // عند اكتمال الطلب بشكل نهائي
}