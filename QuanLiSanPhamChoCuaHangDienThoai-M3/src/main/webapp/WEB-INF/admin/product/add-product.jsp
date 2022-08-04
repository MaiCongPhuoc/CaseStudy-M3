<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/admin/layout/head.jsp"></jsp:include>
</head>

<body>

<%--<script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>--%>

<jsp:include page="/WEB-INF/admin/layout/headerMain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/header-content.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/headerDouble.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/sidebarMain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/sidebarCompact.jsp"></jsp:include>

<script src="assets\js\demo.js"></script>

<!-- END ONLY DEV -->


<!-- ========== HEADER ========== -->


<!-- ========== END HEADER ========== -->

<!-- ========== MAIN CONTENT ========== -->
<!-- Navbar Vertical -->


<!-- End Navbar Vertical -->

<main id="content" role="main" class="main">
    <!-- Content -->
    <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
            <div class="row align-items-center">
                <div class="col-sm mb-2 mb-sm-0">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-no-gutter">
                            <li class="breadcrumb-item"><a class="breadcrumb-link" href="ecommerce-products.html">Products</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Add product</li>
                        </ol>
                    </nav>

                    <h1 class="page-header-title">Add product</h1>
                </div>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Page Header -->
        <%--        <form method="post" enctype="multipart/form-data">--%>
        <%--            <div class="row">--%>
        <%--                <div class="col-lg-12">--%>
        <%--                    <!-- Card -->--%>
        <%--                    <div class="card mb-3 mb-lg-5">--%>
        <%--                        <!-- Header -->--%>
        <%--                        <div class="card-header">--%>
        <%--                            <h2 class="card-header-title">Product information</h2>--%>
        <%--                        </div>--%>
        <%--                        <!-- End Header -->--%>

        <%--                        <!-- Body -->--%>
        <%--&lt;%&ndash;                        <div class="card-body">&ndash;%&gt;--%>
        <%--                            <!-- Form Group -->--%>
        <%--                            <div class="form-group">--%>
        <%--                                <label class="input-label">Product Name </label>--%>
        <%--                                <input type="text" class="form-control" name="productName"--%>
        <%--                                       placeholder="Shirt, t-shirts, etc.">--%>
        <%--                            </div>--%>
        <%--                            <!-- End Form Group -->--%>

        <%--                            <div class="row">--%>
        <%--                                <div class="col-sm-6">--%>
        <%--                                    <!-- Form Group -->--%>
        <%--                                    <div class="form-group">--%>
        <%--                                        <label class="input-label">Quantity</label>--%>

        <%--                                        <input type="number" class="form-control" name="quantity"--%>
        <%--                                               placeholder="eg. 348121032">--%>
        <%--                                    </div>--%>
        <%--                                    <!-- End Form Group -->--%>
        <%--                                </div>--%>

        <%--                                <div class="col-sm-6">--%>
        <%--                                    <!-- Form Group -->--%>
        <%--                                    <div class="form-group">--%>
        <%--                                        <label class="input-label">Price</label>--%>

        <%--                                        <div class="input-group input-group-merge">--%>
        <%--                                            <input type="text" class="form-control" name="price"--%>
        <%--                                                   placeholder="0.0">--%>
        <%--                                        </div>--%>
        <%--                                    </div>--%>
        <%--                                    <!-- End Form Group -->--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                            <!-- End Row -->--%>

        <%--                            <label class="input-label">Description <span class="input-label-secondary">(Optional)</span></label>--%>

        <%--                            <!-- Quill -->--%>
        <%--                            <div class="form-group row">--%>
        <%--                                <div class="col-12 col-lg-12 col-12-6">--%>
        <%--                                    <input class="form-control"  name="description" >--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                            <!-- End Quill -->--%>

        <%--                            <div class="form-group row">--%>
        <%--                                <div class="col-12 col-lg-12 col-12-6">--%>
        <%--                                    <input type="file" name="file" class="form-control"/>--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                            <div class="form-group row">--%>
        <%--                                <div class="col-12 col-lg-6 col-12-6">--%>
        <%--                                    <input type="reset" class="form-control btn btn-primary"/>--%>
        <%--                                </div>--%>
        <%--                                <div class="col-12 col-lg-6 col-12-6">--%>
        <%--                                    <input type="submit" class="form-control btn btn-primary"/>--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
        <%--                        <!-- Body -->--%>
        <%--                    </div>--%>
        <%--                    <!-- End Card -->--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </form>--%>
        <!-- End Row -->
        <form method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-lg-11">
                    <!-- Card -->
                    <div class="card mb-3 mb-lg-5" style="padding: 0 5px">
                        <!-- Header -->
                        <div class="card-header">
                            <h2 class="card-header-title">Product information</h2>
                        </div>
                        <div class="form-group">
                            <label class="input-label">Product Name </label>
                            <input type="text" class="form-control" name="productName"
                                   value="${product.getProductName()}"
                                   placeholder="Shirt, t-shirts, etc.">
                            <span style="color: red;font-size: 10px;">${errorName}</span>
                        </div>
                        <!-- End Form Group -->

                        <div class="row">
                            <div class="col-sm-6">
                                <!-- Form Group -->
                                <div class="form-group">
                                    <label class="input-label">Quantity</label>

                                    <input type="number" class="form-control" name="quantity"
                                           value="${product.getQuantity()}"
                                           placeholder="eg. 348121032">
                                    <span style="color: red;font-size: 10px;">${errorQuantity}</span>
                                </div>
                                <!-- End Form Group -->
                            </div>

                            <div class="col-sm-6">
                                <!-- Form Group -->
                                <div class="form-group">
                                    <label class="input-label">Price</label>

                                    <div class="input-group input-group-merge">
                                        <input type="text" class="form-control" name="price"
                                               value="${product.getPrice()}"
                                               placeholder="0.0">
                                        <span style="color: red;font-size: 10px;">${errorPrice}</span>
                                    </div>
                                </div>
                                <!-- End Form Group -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <label class="input-label">Description <span
                                class="input-label-secondary">(Optional)</span></label>

                        <!-- Quill -->
                        <div class="form-group row">
                            <div class="col-12 col-lg-12 col-12-6">
                                <input class="form-control" name="description" value="${product.getDescription()}">
                            </div>
                        </div>
                        <!-- End Quill -->

                        <div class="form-group row">
                            <div class="col-12 col-lg-12 col-12-6">
                                <input type="file" name="file" class="form-control"/>
                                <span style="color: red;font-size: 10px;">${errorImage}</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-12 col-lg-6 col-12-6">
                                <input type="reset" class="form-control btn btn-primary"/>
                            </div>
                            <c:if test="${edit ne 'edit'}">
                                <div class="col-12 col-lg-6 col-12-6">
                                    <input type="submit" class="form-control btn btn-primary" value="Add"/>
                                </div>
                            </c:if>
                            <c:if test="${edit eq 'edit'}">
                                <div class="col-12 col-lg-6 col-12-6">
                                    <input type="submit" class="form-control btn btn-primary" value="Edit"/>
                                </div>
                            </c:if>
                        </div>

                    </div>
                    <!-- End Card -->
                </div>
            </div>
        </form>
        <div class="form-group row" >
            <div class="col-12 col-lg-6 col-12-6">
                ${errors}
            </div>
        </div>
    </div>
    <!-- End Content -->

    <!-- Footer -->

    <div class="footer">
        <div class="row justify-content-between align-items-center">
            <div class="col">
                <p class="font-size-sm mb-0">&copy; Front. <span
                        class="d-none d-sm-inline-block">2020 Htmlstream.</span></p>
            </div>
            <div class="col-auto">
                <div class="d-flex justify-content-end">
                    <!-- List Dot -->
                    <ul class="list-inline list-separator">
                        <li class="list-inline-item">
                            <a class="list-separator-link" href="#">FAQ</a>
                        </li>

                        <li class="list-inline-item">
                            <a class="list-separator-link" href="#">License</a>
                        </li>

                        <li class="list-inline-item">
                            <!-- Keyboard Shortcuts Toggle -->
                            <div class="hs-unfold">
                                <a class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
                                   href="javascript:;" data-hs-unfold-options='{
                              "target": "#keyboardShortcutsSidebar",
                              "type": "css-animation",
                              "animationIn": "fadeInRight",
                              "animationOut": "fadeOutRight",
                              "hasOverlay": true,
                              "smartPositionOff": true
                             }'>
                                    <i class="tio-command-key"></i>
                                </a>
                            </div>
                            <!-- End Keyboard Shortcuts Toggle -->
                        </li>
                    </ul>
                    <!-- End List Dot -->
                </div>
            </div>
        </div>
    </div>


    <!-- End Footer -->
</main>
<!-- ========== END MAIN CONTENT ========== -->

<!-- ========== SECONDARY CONTENTS ========== -->

<!-- JS Implementing Plugins -->
<script src="assets\js\vendor.min.js"></script>


<!-- JS Front -->
<script src="assets\js\theme.min.js"></script>
<jsp:include page="/WEB-INF/admin/layout/scripts.jsp">
    <jsp:param name="create" value="abcd"/>
</jsp:include>
<script>
    if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>');
</script>
<script src="assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
<script src="assets\js\app.js" type="text/javascript"></script>
<script src="assets\lib\jquery.gritter\js\jquery.gritter.js" type="text/javascript"></script>
<script>
    // $(document).ready(function () {
        ${requestScope.errorsCreate}
    // });
</script>
</body>
</html>
