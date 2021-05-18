-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

use QuanLySinhVien;
select *,MAX(credit)
from `subject` s
where s.credit = all (select max(credit)
from `subject` 
)
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
use QuanLySinhVien;
select *,MAX(credit)
from `subject` s
where s.credit = all (select max(credit)
from `subject` 
)
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.StudentId, S.StudentName, AVG(credit)
FROM student S join `subject` sb on S.studentId = sb.subid
GROUP BY S.StudentId, S.StudentName
order by sb.credit desc
