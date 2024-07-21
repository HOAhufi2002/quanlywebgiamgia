from flask import render_template, request, redirect, url_for, session, flash
from . import admin_bp
from models.discount import Discount
from models.supplier import Supplier
from models.voucher import Voucher
from models.notification import Notification
from datetime import date  # Thêm dòng này để nhập khẩu mô-đun date
# Route quản lý chương trình giảm giá
@admin_bp.route('/manage_discounts', methods=['GET', 'POST'])
def manage_discounts():
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    if request.method == 'POST':
        ten_chuong_trinh = request.form['ten_chuong_trinh']
        mo_ta = request.form['mo_ta']
        ngay_bat_dau = request.form['ngay_bat_dau']
        ngay_ket_thuc = request.form['ngay_ket_thuc']
        nha_cung_cap_id = request.form['nha_cung_cap']
        Discount.add_discount(ten_chuong_trinh, mo_ta, ngay_bat_dau, ngay_ket_thuc, nha_cung_cap_id)
        flash('Chương trình giảm giá đã được thêm.')

    discounts = Discount.get_all_discounts_with_suppliers()
    suppliers = Supplier.get_all_suppliers()
    return render_template('admin/manage_discounts.html', discounts=discounts, suppliers=suppliers)

# Route chỉnh sửa chương trình giảm giá
@admin_bp.route('/edit_discount/<int:discount_id>', methods=['GET', 'POST'])
def edit_discount(discount_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    discount = Discount.get_discount_by_id(discount_id)
    suppliers = Supplier.get_all_suppliers()

    if request.method == 'POST':
        ten_chuong_trinh = request.form['ten_chuong_trinh']
        mo_ta = request.form['mo_ta']
        ngay_bat_dau = request.form['ngay_bat_dau']
        ngay_ket_thuc = request.form['ngay_ket_thuc']
        nha_cung_cap_id = request.form['nha_cung_cap']
        Discount.update_discount(discount_id, ten_chuong_trinh, mo_ta, ngay_bat_dau, ngay_ket_thuc, nha_cung_cap_id)
        flash('Chương trình giảm giá đã được cập nhật.')
        return redirect(url_for('admin.manage_discounts'))

    return render_template('admin/edit_discount.html', discount=discount, suppliers=suppliers)

# Route xóa chương trình giảm giá
@admin_bp.route('/delete_discount/<int:discount_id>', methods=['POST'])
def delete_discount(discount_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    Discount.delete_discount(discount_id)
    flash('Chương trình giảm giá đã được xóa.')
    return redirect(url_for('admin.manage_discounts'))

@admin_bp.route('/manage_vouchers', methods=['GET', 'POST'])
def manage_vouchers():
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    if request.method == 'POST':
        ma = request.form['ma']
        phan_tram_giam_gia = request.form['phan_tram_giam_gia']
        ngay_het_han = request.form['ngay_het_han']
        chuong_trinh_giam_gia_id = request.form['chuong_trinh_giam_gia']
        Voucher.add_voucher(ma, phan_tram_giam_gia, ngay_het_han, chuong_trinh_giam_gia_id)
        flash('Mã giảm giá đã được thêm.')

        # Thêm thông báo
        discount = Discount.get_discount_by_id(chuong_trinh_giam_gia_id)
        noi_dung = f"{discount['moTa']} - Mã giảm giá: {ma} - Giảm giá: {phan_tram_giam_gia}%"
        Notification.add_notification(noi_dung, date.today(), 'chuaDoc')

    vouchers = Voucher.get_all_vouchers_with_programs()
    programs = Discount.get_all_discounts_for_voucher()
    return render_template('admin/manage_vouchers.html', vouchers=vouchers, programs=programs)


# Route chỉnh sửa mã giảm giá
@admin_bp.route('/edit_voucher/<int:voucher_id>', methods=['GET', 'POST'])
def edit_voucher(voucher_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    voucher = Voucher.get_voucher_by_id(voucher_id)
    programs = Discount.get_all_discounts()

    if request.method == 'POST':
        ma = request.form['ma']
        phan_tram_giam_gia = request.form['phan_tram_giam_gia']
        ngay_het_han = request.form['ngay_het_han']
        chuong_trinh_giam_gia_id = request.form['chuong_trinh_giam_gia']
        Voucher.update_voucher(voucher_id, ma, phan_tram_giam_gia, ngay_het_han, chuong_trinh_giam_gia_id)
        flash('Mã giảm giá đã được cập nhật.')
        return redirect(url_for('admin.manage_vouchers'))

    return render_template('admin/edit_voucher.html', voucher=voucher, programs=programs)

# Route xóa mã giảm giá
@admin_bp.route('/delete_voucher/<int:voucher_id>', methods=['POST'])
def delete_voucher(voucher_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    Voucher.delete_voucher(voucher_id)
    flash('Mã giảm giá đã được xóa.')
    return redirect(url_for('admin.manage_vouchers'))
@admin_bp.route('/manage_suppliers', methods=['GET', 'POST'])
def manage_suppliers():
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    if request.method == 'POST':
        ten_nha_cung_cap = request.form['ten_nha_cung_cap']
        dia_chi = request.form['dia_chi']
        so_dien_thoai = request.form['so_dien_thoai']
        email = request.form['email']
        Supplier.add_supplier(ten_nha_cung_cap, dia_chi, so_dien_thoai, email)
        flash('Nhà cung cấp đã được thêm.')

    suppliers = Supplier.get_all_suppliers()
    return render_template('admin/manage_suppliers.html', suppliers=suppliers)

@admin_bp.route('/edit_supplier/<int:supplier_id>', methods=['GET', 'POST'])
def edit_supplier(supplier_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    supplier = Supplier.get_supplier_by_id(supplier_id)

    if request.method == 'POST':
        ten_nha_cung_cap = request.form['ten_nha_cung_cap']
        dia_chi = request.form['dia_chi']
        so_dien_thoai = request.form['so_dien_thoai']
        email = request.form['email']
        Supplier.update_supplier(supplier_id, ten_nha_cung_cap, dia_chi, so_dien_thoai, email)
        flash('Nhà cung cấp đã được cập nhật.')
        return redirect(url_for('admin.manage_suppliers'))

    return render_template('admin/edit_supplier.html', supplier=supplier)

@admin_bp.route('/delete_supplier/<int:supplier_id>', methods=['POST'])
def delete_supplier(supplier_id):
    if 'user_id' not in session or session['user_role'] != 'admin':
        return redirect(url_for('auth.login'))

    Supplier.delete_supplier(supplier_id)
    flash('Nhà cung cấp đã được xóa.')
    return redirect(url_for('admin.manage_suppliers'))