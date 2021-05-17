select kh.id_khach_hang,lkh.id_loai_khach_hang,lkh.name_loai_khach_hang,kh.name_khach_hang,kh.ngay_sinh,kh.so_cmnd,kh.so_dien_thoai,kh.email,kh.dia_chi
from khach_hang kh
join loai_khach_hang lkh on kh.id_loai_khach_hang = lkh.id_loai_khach_hang
where (timestampdiff(year,ngay_sinh, curdate()) between 18 and 50 ) and (dia_chi in ('Da Nang')or dia_chi in('Quang Tri')); 
