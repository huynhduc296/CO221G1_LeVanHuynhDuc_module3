-- Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
-- (được tính dựa trên tổng Hợp đồng chi tiết),
-- TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019 
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.

select hd.id_hop_dong, nv.name_nhan_vien, kh.name_khach_hang, kh.so_dien_thoai , dv.name_dich_vu
, count(*) , hd.ngay_lam_hop_dong, hd.ngay_het_hop_dong
from nhan_vien nv
join hop_dong hd on hd.id_nhan_vien=nv.id_nhan_vien
join khach_hang kh on kh.id_khach_hang=hd.id_khach_hang
join dich_vu dv on dv.id_dich_vu=hd.id_dich_vu
join hop_dong_chi_tiet hdct on hdct.id_hop_dong =hd.id_hop_dong
where (month(ngay_lam_hop_dong) between 10 and 12) and (year(ngay_lam_hop_dong)=2019) and month(ngay_lam_hop_dong) not in (
	select id_hop_dong
    from hop_dong hd
    where month(ngay_lam_hop_dong) between 1 and 6
)
group by hd.id_hop_dong
