<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="/WEB-INF/admin/layout/head.jsp"></jsp:include>
</head>

<body class="   footer-offset">
<script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>
<!-- ONLY DEV -->
<!-- Builder -->
<div id="styleSwitcherDropdown" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow"
     style="width: 35rem;">
    <div class="card card-lg border-0 h-100">
        <div class="card-header align-items-start">
            <div class="mr-2">
                <h3 class="card-header-title">Front Builder</h3>
                <p>Customize your overview page layout. Choose the one that best fits your needs.</p>
            </div>
            <!-- Toggle Button -->
            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark" href="javascript:;"
               data-hs-unfold-options='{
                  "target": "#styleSwitcherDropdown",
                  "type": "css-animation",
                  "animationIn": "fadeInRight",
                  "animationOut": "fadeOutRight",
                  "hasOverlay": true,
                  "smartPositionOff": true
                 }'>
                <i class="tio-clear tio-lg"></i>
            </a>
            <!-- End Toggle Button -->
        </div>
        <!-- Body -->
        <div class="card-body sidebar-scrollbar">
            <h4 class="mb-1">Layout skins <span id="js-builder-disabled" class="badge badge-soft-danger"
                                                style="opacity: 0">Disabled</span></h4>
            <p>3 kinds of layout skins to choose from.</p>
            <div class="row gx-2 mb-5">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio"
                                   id="layoutSkinsRadio1"
                                   checked="" value="default">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio1">
                                <img class="custom-checkbox-card-img"
                                     src="assets\svg\layouts\layouts-sidebar-default.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio"
                                   id="layoutSkinsRadio2"
                                   value="navbar-dark">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio2">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\layouts-sidebar-dark.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Dark</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio"
                                   id="layoutSkinsRadio3"
                                   value="navbar-light">
                            <label class="custom-checkbox-card-label" for="layoutSkinsRadio3">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\layouts-sidebar-light.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Light</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->
            <h4 class="mb-1">Sidebar layout options</h4>
            <p>Choose between standard navigation sizing, mini or even compact with icons.</p>
            <div class="row gx-2 mb-5">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                                   id="sidebarLayoutOptions1" checked="" value="default">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions1">
                                <img class="custom-checkbox-card-img"
                                     src="assets\svg\layouts\sidebar-default-classic.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                                   id="sidebarLayoutOptions2" value="navbar-vertical-aside-compact-mode">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions2">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\sidebar-compact.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Compact</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                                   id="sidebarLayoutOptions3" value="navbar-vertical-aside-mini-mode">
                            <label class="custom-checkbox-card-label" for="sidebarLayoutOptions3">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\sidebar-mini.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Mini</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->
            <h4 class="mb-1">Header layout options</h4>
            <p>Choose the primary navigation of your header layout.</p>
            <div class="row gx-2">
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                                   id="headerLayoutOptions1" value="single">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions1">
                                <img class="custom-checkbox-card-img" src="assets\svg\layouts\header-default-fluid.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default (Fluid)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                                   id="headerLayoutOptions2" value="single-container">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions2">
                                <img class="custom-checkbox-card-img"
                                     src="assets\svg\layouts\header-default-container.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Default (Container)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                                   id="headerLayoutOptions3" value="double">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions3">
                                <img class="custom-checkbox-card-img"
                                     src="assets\svg\layouts\header-double-line-fluid.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Double line (Fluid)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
                <!-- Custom Radio -->
                <div class="col-4 text-center mt-2">
                    <div class="text-center">
                        <div class="custom-checkbox-card mb-2">
                            <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                                   id="headerLayoutOptions4" value="double-container">
                            <label class="custom-checkbox-card-label" for="headerLayoutOptions4">
                                <img class="custom-checkbox-card-img"
                                     src="assets\svg\layouts\header-double-line-container.svg"
                                     alt="Image Description">
                            </label>
                            <span class="custom-checkbox-card-text">Double line (Container)</span>
                        </div>
                    </div>
                </div>
                <!-- End Custom Radio -->
            </div>
            <!-- End Row -->
        </div>
        <!-- End Body -->
        <!-- Footer -->
        <div class="card-footer">
            <div class="row gx-2">
                <div class="col">
                    <button type="button" id="js-builder-reset" class="btn btn-block btn-lg btn-white">
                        <i class="tio-restore"></i> Reset
                    </button>
                </div>
                <div class="col">
                    <button type="button" id="js-builder-preview" class="btn btn-block btn-lg btn-primary">
                        <i class="tio-visible"></i> Preview
                    </button>
                </div>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Footer -->
    </div>
</div>
<!-- End Builder -->
<!-- JS Preview mode only -->
<jsp:include page="/WEB-INF/admin/layout/headerMain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/header-content.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/headerDouble.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/sidebarMain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/sidebarCompact.jsp"></jsp:include>

<script src="assets\js\demo.js"></script>

<!-- END ONLY DEV -->

<!-- Search Form -->
<div id="searchDropdown" class="hs-unfold-content dropdown-unfold search-fullwidth d-md-none">
    <form class="input-group input-group-merge input-group-borderless">
        <div class="input-group-prepend">
            <div class="input-group-text">
                <i class="tio-search"></i>
            </div>
        </div>

        <input class="form-control rounded-0" type="search" placeholder="Search in front" aria-label="Search in front">

        <div class="input-group-append">
            <div class="input-group-text">
                <div class="hs-unfold">
                    <a class="js-hs-unfold-invoker" href="javascript:;" data-hs-unfold-options='{
                   "target": "#searchDropdown",
                   "type": "css-animation",
                   "animationIn": "fadeIn",
                   "hasOverlay": "rgba(46, 52, 81, 0.1)",
                   "closeBreakpoint": "md"
                 }'>
                        <i class="tio-clear tio-lg"></i>
                    </a>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- End Search Form -->

<!-- ========== HEADER ========== -->


<!-- ========== END HEADER ========== -->

<!-- ========== MAIN CONTENT ========== -->
<!-- Navbar Vertical -->


<!-- End Navbar Vertical -->

<!-- Content -->
<div class="container listuser" style="float: right;">
    <!-- Page Header -->
    <div class="page-header">
        <div class="row align-items-center">
            <div class="col-sm mb-2 mb-sm-0">
                <h1 class="page-header-title">Dashboard</h1>
            </div>

            <div class="col-sm-auto">
                <a class="btn btn-primary" href="javascript:;" data-toggle="modal" data-target="#inviteUserModal">
                    <i class="tio-user-add mr-1"></i> Invite users
                </a>
            </div>
        </div>
    </div>
    <!-- End Page Header -->

    <!-- Card -->
    <div class="card mb-3 mb-lg-5">
        <!-- Header -->
        <div class="card-header">
            <div class="row justify-content-between align-items-center flex-grow-1">
                <div class="col-12 col-md">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="card-header-title">Users</h5>

                        <!-- Datatable Info -->
                        <div id="datatableCounterInfo" style="display: none;">
                            <div class="d-flex align-items-center">
                    <span class="font-size-sm mr-3">
                      <span id="datatableCounter">0</span>
                      Selected
                    </span>
                                <a class="btn btn-sm btn-outline-danger" href="javascript:;">
                                    <i class="tio-delete-outlined"></i> Delete
                                </a>
                            </div>
                        </div>
                        <!-- End Datatable Info -->
                    </div>
                </div>

                <div class="col-auto">
                    <!-- Filter -->
                    <div class="row align-items-sm-center">
                        <div class="col-md">
                            <form action="/admin?action=list" method="post">
                                <!-- Search -->
                                <div class="input-group input-group-merge input-group-flush">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="tio-search"></i>
                                        </div>
                                    </div>
                                    <input id="datatableSearch" type="search" class="form-control" name="s"
                                           value="${requestScope.s}"
                                           placeholder="Search users" hint="search" aria-label="Search users" size="50">
                                    <select name="idCountry">
                                        <option value="-1">All</option>
                                        <c:forEach items="${applicationScope.listCountry}" var="country">
                                            <c:choose>
                                                <c:when test="${country.getId() == requestScope.idCountry}">
                                                    <option selected
                                                            value="${country.getId()}">${country.getCountry()}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${country.getId()}">${country.getCountry()}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                    <input type="submit" name="search"
                                           class="btn btn-primary btn-search" type="get" value="Search"/>
                                </div>
                                <!-- End Search -->
                            </form>
                        </div>
                    </div>
                    <!-- End Filter -->
                </div>
            </div>
        </div>
        <!-- End Header -->
        <!-- Table -->
        <div class="table-responsive datatable-custom">
            <table id="datatable"
                   class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
                   data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 1, 4],
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 8,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
                <thead class="thead-light">
                <tr>
                    <th scope="col" class="table-column-pr-0">
                    </th>
                    <th class="table-column-pl-0">User name</th>
                    <th>User Type</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Country</th>
                    <th>Action</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${requestScope.listUser}">
                    <tr>
                        <td class="table-column-pr-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="usersDataCheck2">
                            </div>
                        </td>
                        <td class="table-column-pl-0">
                            <a class="media align-items-center" href="#">
                                <div class="avatar avatar-sm avatar-circle mr-2">
                                        <%--                                    <img class="avatar-img" src="assets\img\160x160\img10.jpg"--%>
                                        <%--                                         alt="Image Description">--%>
                                    <c:if test="${(user.getImage() != null)}">
                                        <img class="avatar-img" src="${user.getImage()}"
                                             alt="Image Description1">
                                    </c:if>
                                    <c:if test="${(user.getImage() == null)}">
                                        <img class="avatar-img" src="\assets\img\160x160\img1.jpg"
                                             alt="Image Description">
                                    </c:if>
                                </div>
                                <div class="media-body">
                          <span class="h5 text-hover-primary mb-0">${user.getUserName()}
                              <c:if test="${user.getIdRole() == 1}">
                                  <i class="tio-verified text-primary" data-toggle="tooltip" data-placement="top"
                                     title="Top endorsed"></i>
                              </c:if>
                          </span>
                                </div>
                            </a>
                        </td>
                        <c:forEach var="role" items="${applicationScope.listRole}">
                            <c:if test="${user.getIdRole() eq role.getId()}">
                                <td>${role.getRole()}</td>
                            </c:if>
                        </c:forEach>
                        <td>${user.getEmail()}</td>
                        <td>${user.getPhone()}</td>
                        <c:forEach var="country" items="${applicationScope.listCountry}">
                            <c:if test="${user.getIdCountry() == country.getId()}">
                                <td>${country.getCountry()}</td>
                            </c:if>
                        </c:forEach>
                        <td class="icon text-center">
                            <a class="btn btn-outline-primary icons" title="" data-toggle="tooltip"
                            href="/admin?action=edit&id=${user.getIdUser()}" data-bs-original-title="Edit">
                                <i class="fa fa-pencil-square" aria-hidden="true"></i>
                            </a>
                        </td>
                        <td class="icon text-center">
                            <a class="btn btn-outline-danger icons" title="" data-toggle="tooltip"
                               onclick="delet(${user.getIdUser()})" data-bs-original-title="Withdraw">
                                <i class="fa fa-minus" aria-hidden="true"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- End Table -->
        <!-- Footer -->
        <div class="card-footer">
            <!-- Pagination -->
            <div class="row justify-content-center justify-content-sm-between align-items-sm-center">
                <div class="">
                    <%--                    <div class="d-flex justify-content-center justify-content-sm-start align-items-center">--%>
                    <%--                        <span class="mr-2">Showing:</span>--%>

                    <!-- Select -->
                    <%--                                            <select id="datatableEntries" name="count" class="js-select2-custom" data-hs-select2-options='{--%>
                    <%--                                                "minimumResultsForSearch": "Infinity",--%>
                    <%--                                                "customClass": "custom-select custom-select-sm custom-select-borderless",--%>
                    <%--                                                "dropdownAutoWidth": true,--%>
                    <%--                                                "width": true--%>
                    <%--                                              }'>--%>
                    <%--                                                <option value="4">4</option>--%>
                    <%--                                                <option value="6">6</option>--%>
                    <%--                                                <option value="8" selected="">8</option>--%>
                    <%--                                                <option value="12">12</option>--%>
                    <%--                                            </select>--%>
                    <%--                        <!-- End Select -->--%>

                    <%--                        <span class="text-secondary mr-2">of</span>--%>

                    <%--                        <!-- Pagination Quantity -->--%>
                    <%--                        <span id="datatableWithPaginationInfoTotalQty"></span>--%>
                    <%--                    </div>--%>
                </div>
                <div style="width: 100px">
                    <c:if test="${requestScope.currentPage != 1}">
                        <a class="pagging"
                           href="/admin?action=list&page=${requestScope.currentPage - 1}&s=${requestScope.s}&idCountry=${requestScope.idCountry}">Previous</a>
                    </c:if>
                </div>
                <%--For displaying Page numbers.
                The when condition does not display a link for the current page--%>
                <table border="1" cellpadding="5" cellspacing="5" style="width: 50%">
                    <tr>
                        <c:forEach begin="1" end="${noOfPages}" var="i">
                            <c:choose>
                                <%--                    eq là dấu == --%>
                                <c:when test="${currentPage eq i}">
                                    <td style="padding: 10px 17px;font-size: 20px;">${i}</td>
                                </c:when>
                                <c:otherwise>
                                    <td><a href="/admin?action=list&page=${i}&idCountry=${idCountry}" class="pagging">${i}</a></td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                </table>
                <%--For displaying Next link (lt là dấu '<') --%>
                <div style="width: 100px">
                    <c:if test="${requestScope.currentPage lt noOfPages}">
                        <a href="/admin?action=list&page=${requestScope.currentPage + 1}&s=${requestScope.s}&idCountry=${requestScope.idCountry}"
                           class="pagging">Next</a>
                    </c:if>
                </div>
                <div class="col-sm-auto">
                    <div class="d-flex justify-content-center justify-content-sm-end">
                        <!-- Pagination -->
                        <nav id="datatablePagination" aria-label="Activity pagination"></nav>
                    </div>
                </div>
            </div>
            <!-- End Pagination -->
        </div>
        <!-- End Footer -->
    </div>
    <!-- End Card -->

</div>
<!-- End Content -->

<!-- Footer -->

<%--<div class="footer">--%>
<%--    <div class="row justify-content-between align-items-center">--%>
<%--        <div class="col">--%>
<%--            <p class="font-size-sm mb-0">&copy; Front. <span--%>
<%--                    class="d-none d-sm-inline-block">2020 Htmlstream.</span></p>--%>
<%--        </div>--%>
<%--        <div class="col-auto">--%>
<%--            <div class="d-flex justify-content-end">--%>
<%--                <!-- List Dot -->--%>
<%--                <ul class="list-inline list-separator">--%>
<%--                    <li class="list-inline-item">--%>
<%--                        <a class="list-separator-link" href="#">FAQ</a>--%>
<%--                    </li>--%>

<%--                    <li class="list-inline-item">--%>
<%--                        <a class="list-separator-link" href="#">License</a>--%>
<%--                    </li>--%>

<%--                    <li class="list-inline-item">--%>
<%--                        <!-- Keyboard Shortcuts Toggle -->--%>
<%--                        <div class="hs-unfold">--%>
<%--                            <a class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"--%>
<%--                               href="javascript:;"--%>
<%--                               data-hs-unfold-options='{--%>
<%--                              "target": "#keyboardShortcutsSidebar",--%>
<%--                              "type": "css-animation",--%>
<%--                              "animationIn": "fadeInRight",--%>
<%--                              "animationOut": "fadeOutRight",--%>
<%--                              "hasOverlay": true,--%>
<%--                              "smartPositionOff": true--%>
<%--                             }'>--%>
<%--                                <i class="tio-command-key"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <!-- End Keyboard Shortcuts Toggle -->--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <!-- End List Dot -->--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<!-- Welcome Message Modal -->
<div class="modal fade" id="welcomeMessageModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- Header -->
            <div class="modal-close">
                <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal"
                        aria-label="Close">
                    <i class="tio-clear tio-lg"></i>
                </button>
            </div>
            <!-- End Header -->

            <!-- Body -->
            <div class="modal-body p-sm-5">
                <div class="text-center">
                    <div class="w-75 w-sm-50 mx-auto mb-4">
                        <img class="img-fluid" src="assets\svg\illustrations\graphs.svg" alt="Image Description">
                    </div>

                    <h4 class="h1">Welcome to Front</h4>

                    <p>We're happy to see you in our community.</p>
                </div>
            </div>
            <!-- End Body -->

            <!-- Footer -->
            <div class="modal-footer d-block text-center py-sm-5">
                <small class="text-cap mb-4">Trusted by the world's best teams</small>

                <div class="w-85 mx-auto">
                    <div class="row justify-content-between">
                        <div class="col">
                            <img class="img-fluid ie-welcome-brands" src="assets\svg\brands\gitlab-gray.svg"
                                 alt="Image Description">
                        </div>
                        <div class="col">
                            <img class="img-fluid ie-welcome-brands" src="assets\svg\brands\fitbit-gray.svg"
                                 alt="Image Description">
                        </div>
                        <div class="col">
                            <img class="img-fluid ie-welcome-brands" src="assets\svg\brands\flow-xo-gray.svg"
                                 alt="Image Description">
                        </div>
                        <div class="col">
                            <img class="img-fluid ie-welcome-brands" src="assets\svg\brands\layar-gray.svg"
                                 alt="Image Description">
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer -->
        </div>
    </div>
</div>
<!-- End Welcome Message Modal -->

<!-- Create a new user Modal -->
<div class="modal fade" id="inviteUserModal" tabindex="-1" role="dialog" aria-labelledby="inviteUserModalTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <form class="modal-content">
            <!-- Header -->
            <div class="modal-header">
                <h4 id="inviteUserModalTitle" class="modal-title">Invite users</h4>

                <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal"
                        aria-label="Close">
                    <i class="tio-clear tio-lg"></i>
                </button>
            </div>
            <!-- End Header -->

            <!-- Body -->
            <div class="modal-body">
                <!-- Form Group -->
                <div class="form-group">
                    <div class="input-group input-group-merge mb-2 mb-sm-0">
                        <div class="input-group-prepend" id="fullName">
                <span class="input-group-text">
                  <i class="tio-search"></i>
                </span>
                        </div>

                        <input type="text" class="form-control" name="fullName" placeholder="Search name or emails"
                               aria-label="Search name or emails" aria-describedby="fullName">

                        <div class="input-group-append input-group-append-last-sm-down-none">
                            <!-- Select -->
                            <div id="permissionSelect" class="select2-custom select2-custom-right">
                                <select class="js-select2-custom custom-select" size="1" style="opacity: 0;"
                                        data-hs-select2-options='{
                              "dropdownParent": "#permissionSelect",
                              "minimumResultsForSearch": "Infinity",
                              "dropdownAutoWidth": true,
                              "dropdownWidth": "11rem"
                            }'>
                                    <option value="guest" selected="">Guest</option>
                                    <option value="can edit">Can edit</option>
                                    <option value="can comment">Can comment</option>
                                    <option value="full access">Full access</option>
                                </select>
                            </div>
                            <!-- End Select -->

                            <a class="btn btn-primary d-none d-sm-block" href="javascript:;">Invite</a>
                        </div>
                    </div>

                    <a class="btn btn-block btn-primary d-sm-none" href="javascript:;">Invite</a>
                </div>
                <!-- End Form Group -->

                <div class="form-row">
                    <h5 class="col modal-title">Invite users</h5>

                    <div class="col-auto">
                        <a class="d-flex align-items-center font-size-sm text-body" href="#">
                            <img class="avatar avatar-xss mr-2" src="assets\svg\brands\gmail.svg"
                                 alt="Image Description">
                            Import contacts
                        </a>
                    </div>
                </div>

                <hr class="mt-2">

                <ul class="list-unstyled list-unstyled-py-4">
                    <!-- List Group Item -->
                    <li>
                        <div class="media">
                            <div class="avatar avatar-sm avatar-circle mr-3">
                                <img class="avatar-img" src="assets\img\160x160\img10.jpg" alt="Image Description">
                            </div>

                            <div class="media-body">
                                <div class="row align-items-center">
                                    <div class="col-sm">
                                        <h5 class="text-body mb-0">Amanda Harvey
                                            <i class="tio-verified text-primary" data-toggle="tooltip"
                                               data-placement="top" title="Top endorsed"></i>
                                        </h5>
                                        <span class="d-block font-size-sm">amanda@example.com</span>
                                    </div>

                                    <div class="col-sm">
                                        <!-- Select -->
                                        <div id="inviteUserSelect1"
                                             class="select2-custom select2-custom-sm-right d-sm-flex justify-content-sm-end">
                                            <select class="js-select2-custom custom-select-sm" size="1"
                                                    style="opacity: 0;"
                                                    data-hs-select2-options='{
                                    "dropdownParent": "#inviteUserSelect1",
                                    "minimumResultsForSearch": "Infinity",
                                    "customClass": "custom-select custom-select-sm custom-select-borderless pl-0",
                                    "dropdownAutoWidth": true,
                                    "width": true
                                  }'>
                                                <option value="guest" selected="">Guest</option>
                                                <option value="can edit">Can edit</option>
                                                <option value="can comment">Can comment</option>
                                                <option value="full access">Full access</option>
                                                <option value="remove"
                                                        data-option-template='<span class="text-danger">Remove</span>'>
                                                    Remove
                                                </option>
                                            </select>
                                        </div>
                                        <!-- End Select -->
                                    </div>
                                </div>
                                <!-- End Row -->
                            </div>
                        </div>
                    </li>
                    <!-- End List Group Item -->

                    <!-- List Group Item -->
                    <li>
                        <div class="media">
                            <div class="avatar avatar-sm avatar-circle mr-3">
                                <img class="avatar-img" src="assets\img\160x160\img3.jpg" alt="Image Description">
                            </div>

                            <div class="media-body">
                                <div class="row align-items-center">
                                    <div class="col-sm">
                                        <h5 class="text-body mb-0">David Harrison</h5>
                                        <span class="d-block font-size-sm">david@example.com</span>
                                    </div>

                                    <div class="col-sm">
                                        <!-- Select -->
                                        <div id="inviteUserSelect2"
                                             class="select2-custom select2-custom-sm-right d-sm-flex justify-content-sm-end">
                                            <select class="js-select2-custom custom-select-sm" size="1"
                                                    style="opacity: 0;"
                                                    data-hs-select2-options='{
                                    "dropdownParent": "#inviteUserSelect2",
                                    "minimumResultsForSearch": "Infinity",
                                    "customClass": "custom-select custom-select-sm custom-select-borderless pl-0",
                                    "dropdownAutoWidth": true,
                                    "width": true
                                  }'>
                                                <option value="guest" selected="">Guest</option>
                                                <option value="can edit">Can edit</option>
                                                <option value="can comment">Can comment</option>
                                                <option value="full access">Full access</option>
                                                <option value="remove"
                                                        data-option-template='<span class="text-danger">Remove</span>'>
                                                    Remove
                                                </option>
                                            </select>
                                        </div>
                                        <!-- End Select -->
                                    </div>
                                </div>
                                <!-- End Row -->
                            </div>
                        </div>
                    </li>
                    <!-- End List Group Item -->

                    <!-- List Group Item -->
                    <li>
                        <div class="media">
                            <div class="avatar avatar-sm avatar-circle mr-3">
                                <img class="avatar-img" src="assets\img\160x160\img9.jpg" alt="Image Description">
                            </div>

                            <div class="media-body">
                                <div class="row align-items-center">
                                    <div class="col-sm">
                                        <h5 class="text-body mb-0">Ella Lauda <i class="tio-verified text-primary"
                                                                                 data-toggle="tooltip"
                                                                                 data-placement="top"
                                                                                 title="Top endorsed"></i></h5>
                                        <span class="d-block font-size-sm">Markvt@example.com</span>
                                    </div>

                                    <div class="col-sm">
                                        <!-- Select -->
                                        <div id="inviteUserSelect4"
                                             class="select2-custom select2-custom-sm-right d-sm-flex justify-content-sm-end">
                                            <select class="js-select2-custom custom-select-sm" size="1"
                                                    style="opacity: 0;"
                                                    data-hs-select2-options='{
                                    "dropdownParent": "#inviteUserSelect4",
                                    "minimumResultsForSearch": "Infinity",
                                    "customClass": "custom-select custom-select-sm custom-select-borderless pl-0",
                                    "dropdownAutoWidth": true,
                                    "width": true
                                  }'>
                                                <option value="guest" selected="">Guest</option>
                                                <option value="can edit">Can edit</option>
                                                <option value="can comment">Can comment</option>
                                                <option value="full access">Full access</option>
                                                <option value="remove"
                                                        data-option-template='<span class="text-danger">Remove</span>'>
                                                    Remove
                                                </option>
                                            </select>
                                        </div>
                                        <!-- End Select -->
                                    </div>
                                </div>
                                <!-- End Row -->
                            </div>
                        </div>
                    </li>
                    <!-- End List Group Item -->

                    <!-- List Group Item -->
                    <li>
                        <div class="media">
                            <div class="avatar avatar-sm avatar-soft-dark avatar-circle mr-3">
                                <span class="avatar-initials">B</span>
                            </div>

                            <div class="media-body">
                                <div class="row align-items-center">
                                    <div class="col-sm">
                                        <h5 class="text-body mb-0">Bob Dean</h5>
                                        <span class="d-block font-size-sm">bob@example.com</span>
                                    </div>

                                    <div class="col-sm">
                                        <!-- Select -->
                                        <div id="inviteUserSelect3"
                                             class="select2-custom select2-custom-sm-right d-sm-flex justify-content-sm-end">
                                            <select class="js-select2-custom custom-select-sm" size="1"
                                                    style="opacity: 0;"
                                                    data-hs-select2-options='{
                                    "dropdownParent": "#inviteUserSelect3",
                                    "minimumResultsForSearch": "Infinity",
                                    "customClass": "custom-select custom-select-sm custom-select-borderless pl-0",
                                    "dropdownAutoWidth": true,
                                    "width": true
                                  }'>
                                                <option value="guest" selected="">Guest</option>
                                                <option value="can edit">Can edit</option>
                                                <option value="can comment">Can comment</option>
                                                <option value="full access">Full access</option>
                                                <option value="remove"
                                                        data-option-template='<span class="text-danger">Remove</span>'>
                                                    Remove
                                                </option>
                                            </select>
                                        </div>
                                        <!-- End Select -->
                                    </div>
                                </div>
                                <!-- End Row -->
                            </div>
                        </div>
                    </li>
                    <!-- End List Group Item -->
                </ul>
            </div>
            <!-- End Body -->

            <!-- Footer -->
            <div class="modal-footer justify-content-start">
                <div class="row align-items-center flex-grow-1 mx-n2">
                    <div class="col-sm-9 mb-2 mb-sm-0">
                        <input type="hidden" id="inviteUserPublicClipboard"
                               value="https://themes.getbootstrap.com/product/front-multipurpose-responsive-template/">

                        <p class="modal-footer-text">The public share <a href="#">link settings</a>
                            <i class="tio-help-outlined" data-toggle="tooltip" data-placement="top"
                               title="The public share link allows people to view the project without giving access to full collaboration features."></i>
                        </p>
                    </div>

                    <div class="col-sm-3 text-sm-right">
                        <a class="js-clipboard btn btn-sm btn-white text-nowrap" href="javascript:;"
                           data-toggle="tooltip"
                           data-placement="top" title="Copy to clipboard!" data-hs-clipboard-options='{
                    "type": "tooltip",
                    "successText": "Copied!",
                    "contentTarget": "#inviteUserPublicClipboard",
                    "container": "#inviteUserModal"
                   }'>
                            <i class="tio-link mr-1"></i> Copy link</a>
                    </div>
                </div>
            </div>
            <!-- End Footer -->
        </form>
    </div>
</div>
<jsp:include page="/WEB-INF/admin/layout/scripts.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/scripts.jsp">
    <jsp:param name="index" value="abc"/>
</jsp:include>
<script type="text/javascript">
    $(document).ready(function(){
        ${requestScope.successful}
//         return  $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'you have edit added!', class_name: 'color success' }), !1;
        // $.gritter.add({ title: "Success", text: "This is a simple Gritter Notification.", class_name: "color success" });
    });
    function delet(id) {
        if (confirm("are you sure to delete it?") === true){
            window.location.href ="/admin?action=delete&id=" +id;
        }
    }
</script>
</body>

</html>
