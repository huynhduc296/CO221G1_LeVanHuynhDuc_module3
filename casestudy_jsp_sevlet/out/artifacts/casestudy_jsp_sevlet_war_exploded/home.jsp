<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/05/2021
  Time: 11:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/8eb7f18b87.js" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <nav class="navbar navbar-light ">
        <a class="navbar-brand" href="#">
            <i class="fab fa-fort-awesome fa-3x"></i>
        </a>
        <h3 style="text-align:left">Huỳnh Đức</h3>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light mt-2 ">
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/employee">Employee <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/customer">Customer <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Service <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contract <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div container class="mt-5">
        <div class="row">
            <div class="col-3 ">
                <div style="margin-left: 20px">
                    <div>
                        <b>Khu Vực</b>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" >
                            <label class="form-check-label" for="flexCheckDefault">
                                Hà Nội
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                TP.Hồ Chí Minh
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                Đà Nẵng
                            </label>
                        </div>
                    </div>
                    <br><br>
                    <div>
                        <b>Đánh giá về vị trí</b>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                9+Trên cả tuyệt vời (323)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                8+Xuất sắc (681)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked>
                            <label class="form-check-label" for="flexRadioDefault3">
                                7+Rất tốt (863)
                            </label>
                        </div>
                    </div>
                    <br>
                    <div>
                        <b>Làm gì ở địa bàn này</b>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Thắng cảnh (1693)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                Bãi biển (1408)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                Ăn uống (352)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                Văn hóa (285)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value=""  checked>
                            <label class="form-check-label" >
                                Thiên nhiên (18)
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-9 ">
                <div class="alert alert-success" role="alert">
                    <p>Giảm giá đặc biệt Agoda</p>
                    <p class="mb-0">Nâng cấp trải nghiệm của quý khách với Khuyến mại đặc biệt</p>
                </div>
                <div class="alert alert-success" role="alert">
                    <p>Nhanh lên! 57% chỗ nghỉ trên trang của chúng tôi đã kín phòng!</p>
                    <p class="mb-0">Phòng ở Đà Nẵng đang bán rất chạy vào ngày bạn chọn. Nhanh tay đặt trước khi giá tăng.</p>
                </div>
                <div>
                    <div class="card mb-3">
                        <img src="https://toquoc.mediacdn.vn/Uploaded/daont/2017_11_12/NewFolder/Sun_Peninsula_Residence_Villa_Infinity_pool_DYSR.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Pullman Danang Beach Resort</h5>
                            <p class="card-text">101 Đường Võ Nguyên Giáp, Khuê Mỹ, Ngũ Hành Sơn, Hòa Hải, Đà Nẵng, Việt Nam </p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Khu nghỉ dưỡng TIA Wellness - Bao gồm spa (TIA Wellness Resort - Spa Inclusive)</h5>
                            <p class="card-text">đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Hòa Hải, Đà Nẵng, Việt Nam/p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                        <img src="https://cdnimg.vietnamplus.vn/uploaded/fsmsr/2019_01_28/ok1.jpg" class="card-img-bottom" alt="...">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
    <nav class="navbar navbar-light bg-dark">
        <p style=" color: white">© 2021. All rights reserved.</p>
    </nav>
</div>
</body>
</html>
