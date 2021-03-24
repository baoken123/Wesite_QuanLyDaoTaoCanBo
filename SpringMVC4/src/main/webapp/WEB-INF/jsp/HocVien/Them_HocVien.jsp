<%--
  Created by IntelliJ IDEA.
  User: ntngo
  Date: 3/24/2021
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../template.css" />
    <title>Thêm Học Viên</title>
</head>
<body>
<div class="container-fluid cContainerFluid">
    <div class="row cRow">
        <div class="col-md-3 cColNavbarLeft">
            <!-- Tiêu đề của navbar left -->
            <div class="cColNavbarLeft__panelTitle">
                <span class="title"><a href="../KhoaHoc/template.html">Quản lý đào tạo cán bộ</a></span>
            </div>
            <hr />
            <div class="cColNavbarLeft__panelUser">
                <img
                        src="https://via.placeholder.com/100x100   "
                        alt=""
                        class="avartar"
                />
                <!-- Hiển thị thông tin người dùng đăng nhập -->
                <div class="info">
                    <div class="info__item info__fullName">
                        <i class="fas fa-user"></i>
                        <span>Trần Hoài Đức</span>
                    </div>
                    <div class="info__item info__email">
                        <i class="fas fa-envelope"></i>
                        <span>ntnoc229@gmail.com</span>
                    </div>
                    <div class="info__item info__position">
                        <i class="fas fa-id-card"></i>
                        <span>Giám đốc</span>
                    </div>
                    <a href="" class="info__item info__logout">Đăng xuất</a>
                </div>
            </div>
            <hr />
            <!-- Danh sách menu -->
            <div class="cColNavbarLeft__panelMenu">
                <div class="list-group" style="width:100%;text-align: center;">
                    <button type="button" class="list-group-item list-group-item-action " >
                        <a href="../KhoaHoc/template.html" style="text-decoration: none;color: black;">Khóa Học</a>
                    </button>
                    <button type="button" class="list-group-item list-group-item-action ">
                        <a href="../CanBo/CanBo.html" style="text-decoration: none;color: black;">Học Viên</a>
                    </button>
                    <button type="button" class="list-group-item list-group-item-action active">
                        <a href="../HocVien/Hocvien.html" style="text-decoration: none;color: white;">Lớp Học Viên</a>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-8 cColContent">
            <div class="theCourse">
                <!-- Tiêu đề của main content -->
                <span class="title">Thêm Lớp Học Viên</span>
                <div class="boxBorder boxFunction">
                    <button type="button" class="btn btn-primary">
                        <div class="btn btn-primary"><a href="../HocVien/Hocvien.html"><i class="fa fa-angle-double-left" style="font-size:18px ; color: aliceblue;">Trở Lại</i></a></div>
                        <div class="boxSearch">
                    </button>
                    <div class="boxSearch">
                        <input
                                type="email"
                                placeholder="Tìm kiếm"
                                class="form-control boxSearch__input"
                                id="exampleInputEmail1"
                                aria-describedby="emailHelp"
                        />
                        <button type="button" class="btn btn-primary boxSearch__button">
                            Tìm kiếm
                        </button>
                    </div>
                </div>
                <div class="boxBorder">
                    <div class="form-group">
                        <label for="">Tên Lớp Học Viên</label>
                        <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Điền tên học viên">

                        <label for="">Số Lượng</label>
                        <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Điền chúc vụ">

                        <label for="">Tên Giảng Viên</label>
                        <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Điền phòng ban">

                    </div>

                </div>
                <div class="box-button">
                    <div class="btn btn-primary">Đồng Ý</div>
                </div>
            </div>
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"
></script>
</body>
</html>
