-- Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên

select name_khach_hang
from khach_hang kh
GROUP  BY name_khach_hang;

SELECT DISTINCT name_khach_hang 
FROM khach_hang;

select name_khach_hang
from khach_hang
union
select name_khach_hang
from khach_hang