
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
    <title>Kết Quả Khóa Học</title>
</head>
<style>
    *,
    html {
        padding: 0;
        margin: 0;
    }

    .cContainerFluid .cRow {
        height: 100vh;
        width: 100vw;
    }
    .cContainerFluid .cRow .cColNavbarLeft {
        border-right: 1px solid #0078dc;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelTitle {
        height: 50px;
        width: 100%;
        display: flex;
        flex-flow: row nowrap;
        justify-content: center;
        align-items: center;
        text-decoration: none;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelTitle .title {
        padding: 20px;
        text-decoration: none;
        font-family: "Noto Sans JP", sans-serif;
        font-size: 20px;
        font-weight: 500;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelTitle .title a {
        text-decoration: none;
        color: black;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelUser {
        display: flex;
        flex-flow: row nowrap;
        justify-content: center;
        align-items: center;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelUser .avartar {
        height: 100px;
        width: 100px;
        border-radius: 50%;
        margin-right: 10px;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelUser .info {
        height: auto;
        width: auto;
        display: flex;
        flex-flow: column nowrap;
        justify-content: space-evenly;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelUser .info__item {
        height: 30px;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelUser .info__logout {
        height: 35px;
        display: flex;
        flex-flow: row nowrap;
        justify-content: center;
        align-items: center;
        font-family: "Noto Sans JP", sans-serif;
        font-size: 16;
        font-weight: 400;
        color: whitesmoke;
        text-decoration: none;
        background-color: #0078dc;
        border-radius: 5px;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelMenu {
        height: auto;
        width: 100%;
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        overflow-y: auto;
    }
    .cContainerFluid .cRow .cColNavbarLeft__panelMenu .menu-item {
        height: 40px;
        width: 100%;
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        background-color: #0078dc;
        color: whitesmoke;
        text-decoration: none;
    }
    .cContainerFluid .cRow .cColContent .theCourse .title {
        height: 70px;
        width: 100%;
        display: flex;
        flex-flow: row nowrap;
        justify-content: flex-start;
        align-items: center;
        font-family: "Noto Sans JP", sans-serif;
        font-size: 40px;
        font-weight: 500;
    }
    .cContainerFluid .cRow .cColContent .theCourse .boxBorder {
        height: auto;
        width: 100%;
        display: block;
        border: 1px solid #0078dc;
        border-radius: 5px;
        padding: 10px;
        margin: 10px 0;
        overflow: auto;
    }
    .cContainerFluid .cRow .cColContent .theCourse .boxFunction {
        display: flex;
        flex-flow: row nowrap;
        justify-content: space-between;
        align-items: center;
    }
    .cContainerFluid .cRow .cColContent .theCourse .boxFunction .boxSearch {
        height: 100%;
        width: auto;
        display: flex;
        flex-flow: row nowrap;
        align-items: center;
    }
    .cContainerFluid .cRow .cColContent .theCourse .boxFunction .boxSearch__input {
        margin-right: 10px;
    }
    .cContainerFluid .cRow .cColContent .theCourse .boxFunction .boxSearch__button {
        height: 40px;
        width: 150px;
    }


</style>
<body>
<div class="container-fluid cContainerFluid">
    <div class="row cRow">
        <div class="col-md-3 cColNavbarLeft">
            <!-- Tiêu đề của navbar left -->
            <div class="cColNavbarLeft__panelTitle">
                <span class="title"><a href="khoa-hoc">Quản lý đào tạo cán bộ</a></span>
            </div>
            <hr />
            <div class="cColNavbarLeft__panelUser">
                <img
                        src="https://via.placeholder.com/100x100 "
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
                        <a href="khoa-hoc" style="text-decoration: none;color: black;">Kế Hoạch Đào Tạo</a>
                    </button>
                    <button type="button" class="list-group-item list-group-item-action ">
                        <a href="can-bo" style="text-decoration: none;color: black;">Cán Bộ</a>
                    </button>
                    <button type="button" class="list-group-item list-group-item-action">
                        <a href="hoc-vien" style="text-decoration: none;color: black;">Lớp Học Viên</a>
                    </button>
                    <button type="button" class="list-group-item list-group-item-action active">
                        <a href="ket-qua" style="text-decoration: none;color: white;">
                            Kết Quả Khóa Học</a>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-9 cColContent">
            <div class="theCourse">
                <!-- Tiêu đề của main content -->
                <span class="title">Quản lý Kết Quả Khóa Học</span>
                <div class="boxBorder boxFunction">
                    <button type="button" class="btn btn-primary">
                        <a href="them-ket-qua-khoa-hoc" style="text-decoration: none;color: white;">Thêm Kết Quả</a>
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
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên Cán Bộ</th>
                            <th scope="col">Chức Vụ</th>
                            <th scope="col">Tên Lớp Học</th>
                            <th scope="col">Kết Quả Khóa Học</th>
                            <th scope="col">Duyệt</th>
                            <th scope="col">Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Nguyễn Thế Ngọc</td>
                            <td>Điều Dưỡng</td>
                            <td>Hồi Sức</td>
                            <td>Đạt</td>
                            <!-- <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="checkbox" class="form-check-input" value="">
                                </label>
                              </div>
                            </td> -->
                            <td>
                                <div
                                        style="
                          display: flex;
                          flex-flow: row nowrap;
                          justify-content: space-evenly;
                          align-items: center;
                        "
                                >
                                    <button>
                                        <a href="./ChiTiet_KQ.html" style="color: black;"><i class="fas fa-align-justify fa-lg"></i></a>
                                    </button>
                                    <button >
                                        <a style="color: black;" href="./Sua_KQ.html"><i class="fas fa-pen-alt fa-lg"></i></a>
                                    </button>
                                    <button>
                                        <i class="fas fa-trash-alt fa-lg"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Trần Hoài Đức</td>
                            <td>Điều Dưỡng</td>
                            <td>Gây Mê</td>
                            <td>Đạt</td>
                            <!-- <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="checkbox" class="form-check-input" value="">
                                </label>
                              </div>
                            </td> -->
                            <td>
                                <div
                                        style="
                          display: flex;
                          flex-flow: row nowrap;
                          justify-content: space-evenly;
                          align-items: center;
                        "
                                >
                                    <button>
                                        <i class="fas fa-align-justify fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-pen-alt fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-trash-alt fa-lg"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Lê Đông Nghi</td>
                            <td>Điều Dưỡng</td>
                            <td>Hồi Sức</td>
                            <td>Đạt</td>
                            <!-- <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="checkbox" class="form-check-input" value="">
                                </label>
                              </div>
                            </td> -->
                            <td>
                                <div
                                        style="
                          display: flex;
                          flex-flow: row nowrap;
                          justify-content: space-evenly;
                          align-items: center;
                        "
                                >
                                    <button>
                                        <i class="fas fa-align-justify fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-pen-alt fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-trash-alt fa-lg"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Đỗ Thuận Dĩ An</td>
                            <td>Điều Dưỡng</td>
                            <td>Hồi Sức</td>
                            <td>Đạt</td>
                            <!-- <td>
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="checkbox" class="form-check-input" value="">
                                </label>
                              </div>
                            </td> -->
                            <td>
                                <div
                                        style="
                          display: flex;
                          flex-flow: row nowrap;
                          justify-content: space-evenly;
                          align-items: center;
                        "
                                >
                                    <button>
                                        <i class="fas fa-align-justify fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-pen-alt fa-lg"></i>
                                    </button>
                                    <button>
                                        <i class="fas fa-trash-alt fa-lg"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous">
    $(document).ready(function()
    {
        //khai báo biến submit form lấy đối tượng nút submit
        var submit = $("button[type='submit']");

        //khi nút submit được click
        submit.click(function()
        {
            //khai báo các biến dữ liệu gửi lên server
            var tencanbo = $("input[name='ten-canbo']").val(); //lấy giá trị trong input user
            var chucvucanbo = $("input[name='chucvu']").val();
            var phongban = $("input[name='phongban']").val();
            //Kiểm tra xem trường đã được nhập hay chưa
            // var data = JSON.stringify({
            //     Tencanbo:tencanbo
            // })
            if(tencanbo == '' || chucvucanbo == '' || phongban == ''){
                alert('Vui lòng nhập Đầy Đủ Thông Tin');
                return false;
            }

            //Lấy toàn bộ dữ liệu trong Form
            var data = $('form-capnhap-canbo').serialize();
            $("form").on('submit', function (e) {
                e.preventDefault();
                //ajax call here
                $.ajax({
                    method : 'PUT', //Sử dụng kiểu gửi dữ liệu POST
                    url : 'data.php', //gửi dữ liệu sang trang data.php
                    data : JSON.stringify({
                        tencanbo:tencanbo,
                        chucvucanbo:chucvucanbo,
                        phongban:phongban
                    }), //dữ liệu sẽ được gửi
                    success : function(data)  // Hàm thực thi khi nhận dữ liệu được từ server
                    {
                        if(data == 'false')
                        {
                            alert('Cập Nhật cán bộ không thành công');
                        }else{
                            alert('Cập Nhật cán bộ thành công');
                            //$('#content').html(data);// dữ liệu HTML trả về sẽ được chèn vào trong thẻ có id content
                        }
                    }
                });
                //stop form submission

            });
            //Sử dụng phương thức Ajax.

            return false;
        });
    });
</script>
</body>
</html>
