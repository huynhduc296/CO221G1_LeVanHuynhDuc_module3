select *
from khach_hang
where (timestampdiff(year,ngay_sinh, curdate()) between 18 and 50 ) and dia_chi in ('Da Nang')or dia_chi in('Quang Tri'); 

