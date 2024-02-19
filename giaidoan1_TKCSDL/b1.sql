use sieuthi;
-- cau1 :Liệt kê tên, mã bộ phận có mặt hàng Thanh Long
-- SELECT bophan.ten_bp,bophan.ma_bp,mathang.ten_mh from bophan
-- inner join mathang
-- on  bophan.ma_bp=mathang.ma_bp 
-- where mathang.ten_mh='Thanh Long';

-- cau2 :Liệt kê tên, mã mặt hàng do bộ phận BP001 quản lý.
-- select ten_mh,ma_mh from mathang
-- where mathang.ma_bp='BP001';

-- cau 3 In ra TEN_MH, Ma_BP, MA_NGUOI_CUNG_CAP, TEN_NGUOI_CUNG_CAP của MH01.
-- select mathang.ma_mh,mathang.ten_mh,mathang.ma_bp,nguoicungcap.ma_ncc,nguoicungcap.ten_ncc
-- from mathang,cungcap,nguoicungcap
-- where mathang.ma_mh=cungcap.ma_mh and cungcap.ma_ncc=nguoicungcap.ma_ncc and mathang.ma_mh='MH01';

-- cau 4:Sắp xếp nguoi_cung_cap theo thứ tự giảm dần số mặt hàng mà họ cung cấp nếu có 2 nguoi_cung_cap có 
-- số lượng mặt hàng cung cấp bằng nhau thì ai có mã MA_NGUOI_CUNG_CAP lớn hơn sẽ xếp trước.

-- select nguoicungcap.ma_ncc,nguoicungcap.ten_ncc,nguoicungcap.dia_chi_ncc, thongtindondathang.so_luong_mh
-- from nguoicungcap,cungcap,mathang,thongtindondathang
-- where cungcap.ma_ncc=nguoicungcap.ma_ncc and cungcap.ma_mh=mathang.ma_mh and mathang.ma_mh=thongtindondathang.ma_mh
-- order by thongtindondathang.so_luong_mh DESC,nguoicungcap.ma_ncc DESC;

-- cau5:Đếm xem đơn hàng có mã DDH01 có tổng bao nhiêu mặt hàng và tổng số lượng của tất cả mặt hàng là bao nhiêu cái.
-- select count(thongtindondathang.ma_mh) as sodonhang,sum(thongtindondathang.so_luong_mh) as tongsoluongdon
-- from thongtindondathang
-- where thongtindondathang.so_hieu_DDH='DDH01';

-- cau 6:In ra TEN_KHACH_HANG, SO_HIEU_DON_HANG, MA_MH , TEN_MH, SoLuong mà khách hàng có mã là KH02 đã mua.
-- select khachhang.ten_kh,dondathang.so_hieu_DDH,thongtindondathang.ma_mh,mathang.ten_mh,thongtindondathang.so_luong_mh as soluongmathangmua
-- from khachhang,dondathang,thongtindondathang,mathang
-- where khachhang.ma_kh=dondathang.ma_kh and dondathang.so_hieu_DDH=thongtindondathang.so_hieu_DDH and thongtindondathang.ma_mh=mathang.ma_mh and khachhang.ma_kh="KH002";

-- cau7: In ra tất cả MA_KHACH_HANG , TEN_KHACH_HANG, SO_HIEU_DON_HANG,Ngay_Dat_Hang của những khách hàng có địa chỉ ở Ha Noi.
-- select khachhang.ma_kh,khachhang.ten_kh,dondathang.so_hieu_DDH,dondathang.ngay_DH
-- from dondathang,khachhang
-- where khachhang.ma_kh=dondathang.ma_kh and UPPER(khachhang.dia_chi_kh)='HA NOI'

-- cau8: Đếm xem khách hàng có mã KH02 có tổng cộng bao nhiêu đơn hàng.
-- select count(dondathang.so_hieu_DDH) as sodonhangcuaKH002
-- from dondathang
-- where dondathang.ma_kh="KH002";

-- 9.In ra MA_KHACH_HANG , TEN_KHACH_HANG và SO_HIEU_DON_HANG của những khách hàng mua vào tháng 12 năm 2023
-- 10.Liệt kê tổng tiền mà khách hàng có mã KH02 đã trả để mua mặt hàng có mã MH01
-- 11.Tổng số lượng mà mặt hàng có mã MH01 được mua.
-- 12.Liệt kê MA_NCC và Ten_NCC cung cấp nhiều cung cấp có tên là May khoan.
-- 13.Liệt kê Tên , địa chỉ của những khách hàng sở hữ đơn hàng có Sohieuddh là DDH07 hoặc DDH08 hoặc DDH02.

