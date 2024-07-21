from db import get_db_connection

class Rating:
    @staticmethod
    def get_ratings_by_discount_id(discount_id):
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute('''
            SELECT 
                DanhGia.id,
                DanhGia.diemDanhGia,
                DanhGia.ngayDanhGia,  -- Sử dụng cột ngayDanhGia
                NguoiDung.hoTen
            FROM 
                DanhGia
            JOIN 
                NguoiDung ON DanhGia.idNguoiDung = NguoiDung.id
            WHERE 
                DanhGia.idChuongTrinhGiamGia = ? AND DanhGia.isDel = 0
        ''', (discount_id,))
        ratings = cursor.fetchall()
        conn.close()
        return ratings

    @staticmethod
    def add_rating(user_id, discount_id, rating):
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute('''
            INSERT INTO DanhGia (idNguoiDung, idChuongTrinhGiamGia, diemDanhGia, ngayDanhGia, isDel)
            VALUES (?, ?, ?, GETDATE(), 0)
        ''', (user_id, discount_id, rating))
        conn.commit()
        conn.close()