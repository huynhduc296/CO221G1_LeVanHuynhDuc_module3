-- Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ thống, thông tin hiển thị bao gồm ID
-- (IDNhanVien, IDKhachHang), HoTen, Email, SoDienThoai, NgaySinh, DiaChi.

select nv.id_nhan_vien, nv.name_nhan_vien,nv.email,nv.so_dien_thoai,nv.dia_chi
from nhan_vien nv
	left join hop_dong hd on nv.id_nhan_vien=hd.id_nhan_vien
union 
select kh.id_khach_hang, kh.name_khach_hang,kh.email,kh.so_dien_thoai,kh.dia_chi
from khach_hang kh
    left join hop_dong hd on kh.id_khach_hang=hd.id_khach_hang;