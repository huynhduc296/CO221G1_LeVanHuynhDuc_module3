-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
--  một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự
select nv.id_nhan_vien, nv.name_nhan_vien,nv.ngay_sinh,nv.tien_luong,nv.so_dien_thoai,
		nv.id_cmnd,nv.email,nv.dia_chi,bp.name_bo_phan,td.trinh_do,vt.name_vi_tri
from nhan_vien nv
join bo_phan bp on nv.id_bo_phan = bp.id_bo_phan
join vi_tri vt on nv.id_vi_tri = vt.id_vi_tri
join trinh_do td on nv.id_trinh_do= td.id_trinh_do
where nv.name_nhan_vien regexp '[H][a-z]*$' or nv.name_nhan_vien regexp '[K][a-z]*$'
 or  nv.name_nhan_vien regexp '[T][a-z]*$'and length(name_nhan_vien) <=15
order by nv.id_nhan_vien

