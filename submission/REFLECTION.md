# Reflection — Lab 19

**Tên:** Nguyễn Thành Đạt - 2A202600203
**Cohort:** A20-K1 
**Path đã chạy:** lite

---

## Câu hỏi (≤ 200 chữ)

> Trên golden set 50 queries, mode nào thắng ở loại query nào (`exact` /
> `paraphrase` / `mixed`), và tại sao? Khi nào bạn **không** dùng hybrid
> (i.e. khi nào pure BM25 hoặc pure vector là lựa chọn đúng)?

- **Exact queries**: `keyword` (BM25) thắng vì thuật toán dựa trên TF-IDF giúp so khớp chính xác các từ khóa hiếm hoặc mã định danh.
- **Paraphrase queries**: `semantic` (vector) thắng do khả năng hiểu ý nghĩa, ngữ cảnh và từ đồng nghĩa, vượt qua hạn chế "vocabulary mismatch" của BM25.
- **Mixed queries**: `hybrid` thắng vì nó dùng RRF (Reciprocal Rank Fusion) để kết hợp tín hiệu mạnh nhất từ cả 2 phương pháp (từ khóa chính xác + ngữ nghĩa).

**Khi nào KHÔNG dùng hybrid:**
- **Pure BM25**: Khi hệ thống yêu cầu độ trễ (latency) cực thấp, tiết kiệm tài nguyên tính toán, hoặc domain chủ yếu tìm kiếm theo ID, SKU sản phẩm, tên riêng chính xác.
- **Pure Vector**: Khi tìm kiếm đa ngôn ngữ (cross-lingual), truy vấn dưới dạng hội thoại tự nhiên (conversational), hoặc tìm kiếm đa phương tiện (ảnh/video).

---

## Điều ngạc nhiên nhất khi làm lab này

_(Optional, 1–2 câu)_
Việc sử dụng thuật toán RRF (Reciprocal Rank Fusion) với $k=60$ lại có thể cải thiện rõ rệt chỉ số Precision@10 một cách dễ dàng mà không cần phải tinh chỉnh model phức tạp.

---

## Bonus challenge

- [ ] Đã làm bonus (xem `bonus/`)
- [ ] Pair work với: _<tên đồng đội nếu có>_
