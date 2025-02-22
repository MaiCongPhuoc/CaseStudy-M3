﻿<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/admin/layout/head.jsp"></jsp:include>
</head>

<body class="   footer-offset">

<script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>


<!-- ONLY DEV -->
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

<main id="content" role="main" class="main">
    <!-- Content -->
    <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
            <div class="row align-items-center mb-3">
                <div class="col-sm mb-2 mb-sm-0">
                    <h1 class="page-header-title">Products <span class="badge badge-soft-dark ml-2">72,031</span></h1>

                    <div class="mt-2">
                        <a class="text-body mr-3" href="javascript:;" data-toggle="modal"
                           data-target="#exportProductsModal">
                            <i class="tio-download-to mr-1"></i> Export
                        </a>
                        <a class="text-body" href="javascript:;" data-toggle="modal" data-target="#importProductsModal">
                            <i class="tio-publish mr-1"></i> Import
                        </a>
                    </div>
                </div>

                <div class="col-sm-auto">
                    <a class="btn btn-primary" href="/product?action=create">Add product</a>
                </div>
            </div>
            <!-- End Row -->

            <!-- Nav Scroller -->
            <div class="js-nav-scroller hs-nav-scroller-horizontal">
            <span class="hs-nav-scroller-arrow-prev" style="display: none;">
              <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                <i class="tio-chevron-left"></i>
              </a>
            </span>

                <span class="hs-nav-scroller-arrow-next" style="display: none;">
              <a class="hs-nav-scroller-arrow-link" href="javascript:;">
                <i class="tio-chevron-right"></i>
              </a>
            </span>

                <!-- Nav -->
                <ul class="nav nav-tabs page-header-tabs" id="pageHeaderTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">All products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Archived</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Publish</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Unpublish</a>
                    </li>
                </ul>
                <!-- End Nav -->
            </div>
            <!-- End Nav Scroller -->
        </div>
        <!-- End Page Header -->

        <div class="row justify-content-end mb-3">
            <div class="col-lg">
                <!-- Datatable Info -->
                <div id="datatableCounterInfo" style="display: none;">
                    <div class="d-sm-flex justify-content-lg-end align-items-sm-center">
                <span class="d-block d-sm-inline-block font-size-sm mr-3 mb-2 mb-sm-0">
                  <span id="datatableCounter">0</span>
                  Selected
                </span>
                        <a class="btn btn-sm btn-outline-danger mb-2 mb-sm-0 mr-2" href="javascript:;">
                            <i class="tio-delete-outlined"></i> Delete
                        </a>
                        <a class="btn btn-sm btn-white mb-2 mb-sm-0 mr-2" href="javascript:;">
                            <i class="tio-archive"></i> Archive
                        </a>
                        <a class="btn btn-sm btn-white mb-2 mb-sm-0 mr-2" href="javascript:;">
                            <i class="tio-publish"></i> Publish
                        </a>
                        <a class="btn btn-sm btn-white mb-2 mb-sm-0" href="javascript:;">
                            <i class="tio-clear"></i> Unpublish
                        </a>
                    </div>
                </div>
                <!-- End Datatable Info -->
            </div>
        </div>
        <!-- End Row -->

        <!-- Card -->
        <div class="card">
            <!-- Header -->
            <div class="card-header">
                <div class="row justify-content-between align-items-center flex-grow-1">
                    <div class="col-md-5 mb-3 mb-md-0">
                        <form method="post" action="/product?action=search">
                            <!-- Search -->
                            <div class="input-group input-group-merge input-group-flush">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="tio-search"></i>
                                    </div>
                                </div>
                                <input id="datatableSearch" type="search" class="form-control col-md-10" name="s"
                                       value="${requestScope.s}"
                                       placeholder="Search users" aria-label="Search users">
                                <input type="submit" class="btn btn-primary btn-search col-md-2" value="Search">
                            </div>
                            <!-- End Search -->
                        </form>
                    </div>

                </div>
                <!-- End Row -->
            </div>
            <!-- End Header -->

            <!-- Table -->
            <div class="table-responsive datatable-custom">
                <table id="datatable"
                       class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
                       data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 4, 9],
                        "width": "5%",
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 12,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
                    <thead class="thead-light">
                    <tr>
                        <th class="table-column-pl-0">Product</th>
                        <%--                  <th>Type</th>--%>
                        <%--                  <th>Vendor</th>--%>
                        <%--                  <th>Stocks</th>--%>
                        <%--                  <th>SKU</th>--%>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Description</th>
                        <c:if test="${sessionScope.role == 1}">
                            <th>Actions</th>
                        </c:if>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="listProduct" items="${requestScope.listProduct}">
                        <tr>
                            <td class="table-column-pl-0">
                                <a class="media align-items-center" href="#">
                                    <c:if test="${(listProduct.getImage() != null)}">
                                        <img class="avatar avatar-lg mr-3" src="${listProduct.getImage()}"
                                             alt="Image Description1">
                                    </c:if>
                                    <c:if test="${(listProduct.getImage() == null)}">
                                        <img class="avatar avatar-lg mr-3" src="/assets/img/400x400/img2.jpg"
                                             alt="Image Description">
                                    </c:if>
                                    <div class="media-body">
                                        <h5 class="text-hover-primary mb-0">${listProduct.getProductName()}</h5>
                                    </div>
                                </a>
                            </td>
                            <td><fmt:formatNumber value="${listProduct.getPrice()}" type="currency" pattern="# $"/></td>
                            <td>${listProduct.getQuantity()}</td>
                            <td>${listProduct.getDescription()}</td>
                            <c:if test="${sessionScope.role == 1}">
                                <td class="icon text-center">
                                    <a class="btn btn-outline-danger icon" title="" data-toggle="tooltip"
                                       href="#" onclick="dele(${listProduct.getId()})"
                                       data-bs-original-title="Withdraw">
                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                    </a>
                                    <a class="btn btn-outline-primary icon" title="" data-toggle="tooltip"
                                       href="/product?action=edit&id=${listProduct.getId()}"
                                       data-bs-original-title="Edit">
                                        <i class="fa fa-pencil-square" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- End Table -->

            <!-- Footer -->
            <div class="card-footer">
                <!-- Pagination -->

                <!-- End Pagination -->
            </div>
            <!-- End Footer -->
        </div>
        <!-- End Card -->
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
<!-- Keyboard Shortcuts -->
<div id="keyboardShortcutsSidebar" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
    <div class="card card-lg sidebar-card">
        <div class="card-header">
            <h4 class="card-header-title">Keyboard shortcuts</h4>

            <!-- Toggle Button -->
            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2" href="javascript:;"
               data-hs-unfold-options='{
                "target": "#keyboardShortcutsSidebar",
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
        <div class="card-body sidebar-body sidebar-scrollbar">
            <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
                <div class="list-group-item">
                    <h5 class="mb-1">Formatting</h5>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span class="font-weight-bold">Bold</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">b</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <em>italic</em>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">i</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <u>Underline</u>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">u</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <s>Strikethrough</s>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">s</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span class="small">Small text</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">s</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <mark>Highlight</mark>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">e</kbd>
                        </div>
                    </div>
                </div>
            </div>

            <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
                <div class="list-group-item">
                    <h5 class="mb-1">Insert</h5>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Mention person <a href="#">(@Brian)</a></span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">@</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Link to doc <a href="#">(+Meeting notes)</a></span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">+</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <a href="#">#hashtag</a>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">#hashtag</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Date</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">/date</kbd>
                            <kbd class="d-inline-block mb-1">Space</kbd>
                            <kbd class="d-inline-block mb-1">/datetime</kbd>
                            <kbd class="d-inline-block mb-1">/datetime</kbd>
                            <kbd class="d-inline-block mb-1">Space</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Time</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">/time</kbd>
                            <kbd class="d-inline-block mb-1">Space</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Note box</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">/note</kbd>
                            <kbd class="d-inline-block mb-1">Enter</kbd>
                            <kbd class="d-inline-block mb-1">/note red</kbd>
                            <kbd class="d-inline-block mb-1">/note red</kbd>
                            <kbd class="d-inline-block mb-1">Enter</kbd>
                        </div>
                    </div>
                </div>
            </div>

            <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
                <div class="list-group-item">
                    <h5 class="mb-1">Editing</h5>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Find and replace</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">r</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Find next</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">n</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Find previous</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">p</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Indent</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Tab</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Un-indent</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Tab</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Move line up</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1"><i class="tio-arrow-large-upward-outlined"></i></kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Move line down</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1"><i
                                class="tio-arrow-large-downward-outlined font-size-sm"></i></kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Add a comment</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">m</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Undo</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">z</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Redo</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">y</kbd>
                        </div>
                    </div>
                </div>
            </div>

            <div class="list-group list-group-sm list-group-flush list-group-no-gutters">
                <div class="list-group-item">
                    <h5 class="mb-1">Application</h5>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Create new doc</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">n</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Present</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">p</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Share</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">s</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Search docs</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">o</kbd>
                        </div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-5">
                            <span>Keyboard shortcuts</span>
                        </div>
                        <div class="col-7 text-right">
                            <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                                class="d-inline-block mb-1">/</kbd>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Body -->
    </div>
</div>
<!-- End Keyboard Shortcuts -->

<!-- Activity -->
<div id="activitySidebar" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
    <div class="card card-lg sidebar-card">
        <div class="card-header">
            <h4 class="card-header-title">Activity stream</h4>

            <!-- Toggle Button -->
            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2" href="javascript:;"
               data-hs-unfold-options='{
              "target": "#activitySidebar",
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
        <div class="card-body sidebar-body sidebar-scrollbar">
            <!-- Step -->
            <ul class="step step-icon-sm step-avatar-sm">
                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <div class="step-avatar">
                            <img class="step-avatar-img" src="assets\img\160x160\img9.jpg" alt="Image Description">
                        </div>

                        <div class="step-content">
                            <h5 class="mb-1">Iana Robinson</h5>

                            <p class="font-size-sm mb-1">Added 2 files to task <a class="text-uppercase" href="#"><i
                                    class="tio-folder-bookmarked"></i> Fd-7</a></p>

                            <ul class="list-group list-group-sm">
                                <!-- List Item -->
                                <li class="list-group-item list-group-item-light">
                                    <div class="row gx-1">
                                        <div class="col-6">
                                            <div class="media">
                              <span class="mt-1 mr-2">
                                <img class="avatar avatar-xs" src="assets\svg\brands\excel.svg" alt="Image Description">
                              </span>
                                                <div class="media-body text-truncate">
                                                    <span class="d-block font-size-sm text-dark text-truncate"
                                                          title="weekly-reports.xls">weekly-reports.xls</span>
                                                    <small class="d-block text-muted">12kb</small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="media">
                              <span class="mt-1 mr-2">
                                <img class="avatar avatar-xs" src="assets\svg\brands\word.svg" alt="Image Description">
                              </span>
                                                <div class="media-body text-truncate">
                                                    <span class="d-block font-size-sm text-dark text-truncate"
                                                          title="weekly-reports.xls">weekly-reports.xls</span>
                                                    <small class="d-block text-muted">4kb</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- End List Item -->
                            </ul>

                            <small class="text-muted text-uppercase">Now</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <span class="step-icon step-icon-soft-dark">B</span>

                        <div class="step-content">
                            <h5 class="mb-1">Bob Dean</h5>

                            <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                                    class="tio-folder-bookmarked"></i> Fr-6</a> as <span
                                    class="badge badge-soft-success badge-pill"><span
                                    class="legend-indicator bg-success"></span>"Completed"</span></p>

                            <small class="text-muted text-uppercase">Today</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <div class="step-avatar">
                            <img class="step-avatar-img" src="assets\img\160x160\img3.jpg" alt="Image Description">
                        </div>

                        <div class="step-content">
                            <h5 class="h5 mb-1">Crane</h5>

                            <p class="font-size-sm mb-1">Added 5 card to <a href="#">Payments</a></p>

                            <ul class="list-group list-group-sm">
                                <li class="list-group-item list-group-item-light">
                                    <div class="row gx-1">
                                        <div class="col">
                                            <img class="img-fluid rounded ie-sidebar-activity-img"
                                                 src="assets\svg\illustrations\card-1.svg" alt="Image Description">
                                        </div>
                                        <div class="col">
                                            <img class="img-fluid rounded ie-sidebar-activity-img"
                                                 src="assets\svg\illustrations\card-2.svg" alt="Image Description">
                                        </div>
                                        <div class="col">
                                            <img class="img-fluid rounded ie-sidebar-activity-img"
                                                 src="assets\svg\illustrations\card-3.svg" alt="Image Description">
                                        </div>
                                        <div class="col-auto align-self-center">
                                            <div class="text-center">
                                                <a href="#">+2</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                            <small class="text-muted text-uppercase">May 12</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <span class="step-icon step-icon-soft-info">D</span>

                        <div class="step-content">
                            <h5 class="mb-1">David Lidell</h5>

                            <p class="font-size-sm mb-1">Added a new member to Front Dashboard</p>

                            <small class="text-muted text-uppercase">May 15</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <div class="step-avatar">
                            <img class="step-avatar-img" src="assets\img\160x160\img7.jpg" alt="Image Description">
                        </div>

                        <div class="step-content">
                            <h5 class="mb-1">Rachel King</h5>

                            <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                                    class="tio-folder-bookmarked"></i> Fr-3</a> as <span
                                    class="badge badge-soft-success badge-pill"><span
                                    class="legend-indicator bg-success"></span>"Completed"</span></p>

                            <small class="text-muted text-uppercase">Apr 29</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                        <div class="step-avatar">
                            <img class="step-avatar-img" src="assets\img\160x160\img5.jpg" alt="Image Description">
                        </div>

                        <div class="step-content">
                            <h5 class="mb-1">Finch Hoot</h5>

                            <p class="font-size-sm mb-1">Earned a "Top endorsed" <i
                                    class="tio-verified text-primary"></i> badge</p>

                            <small class="text-muted text-uppercase">Apr 06</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->

                <!-- Step Item -->
                <li class="step-item">
                    <div class="step-content-wrapper">
                  <span class="step-icon step-icon-soft-primary">
                    <i class="tio-user"></i>
                  </span>

                        <div class="step-content">
                            <h5 class="mb-1">Project status updated</h5>

                            <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                                    class="tio-folder-bookmarked"></i> Fr-3</a> as <span
                                    class="badge badge-soft-primary badge-pill"><span
                                    class="legend-indicator bg-primary"></span>"In progress"</span></p>

                            <small class="text-muted text-uppercase">Feb 10</small>
                        </div>
                    </div>
                </li>
                <!-- End Step Item -->
            </ul>
            <!-- End Step -->

            <a class="btn btn-block btn-white" href="javascript:;">View all <i class="tio-chevron-right"></i></a>
        </div>
        <!-- End Body -->
    </div>
</div>
<!-- End Activity -->

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

<!-- Export Products Modal -->
<div class="modal fade" id="exportProductsModal" tabindex="-1" role="dialog" aria-labelledby="exportProductsModalTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- Header -->
            <div class="modal-header">
                <h4 id="exportProductsModalTitle" class="modal-title">Export products</h4>

                <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal"
                        aria-label="Close">
                    <i class="tio-clear tio-lg"></i>
                </button>
            </div>
            <!-- End Header -->

            <!-- Body -->
            <div class="modal-body">
                <p>This CSV file can update all product information. To update just inventory quantites use the <a
                        href="#">CSV file for inventory.</a></p>

                <!-- Form Group -->
                <div class="form-group">
                    <label class="input-label">Export</label>

                    <!-- Custom Checkbox -->
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="exportProductsRadio1" name="exportProductsRadio"
                               class="custom-control-input" checked="">
                        <label class="custom-control-label" for="exportProductsRadio1">Current page</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="exportProductsRadio2" name="exportProductsRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="exportProductsRadio2">All products</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" id="exportProductsRadio3" name="exportProductsRadio"
                               class="custom-control-input" disabled="">
                        <label class="custom-control-label" for="exportProductsRadio3">Selected: 20 products</label>
                    </div>
                    <!-- End Custom Checkbox -->
                </div>
                <!-- End Form Group -->

                <label class="input-label">Export as</label>

                <!-- Custom Checkbox -->
                <div class="custom-control custom-radio mb-2">
                    <input type="radio" id="exportProductsAsRadio1" name="exportProductsAsRadio"
                           class="custom-control-input" checked="">
                    <label class="custom-control-label" for="exportProductsAsRadio1">CSV for Excel, Numbers, or other
                        spreadsheet programs</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" id="exportProductsAsRadio2" name="exportProductsAsRadio"
                           class="custom-control-input">
                    <label class="custom-control-label" for="exportProductsAsRadio2">Plain CSV file</label>
                </div>
                <!-- End Custom Checkbox -->
            </div>
            <!-- End Body -->

            <!-- Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-white mr-2" data-dismiss="modal" aria-label="Close">Cancel</button>
                <button type="button" class="btn btn-primary">Export products</button>
            </div>
            <!-- End Footer -->
        </div>
    </div>
</div>
<!-- End Export Products Modal -->

<!-- Import Products Modal -->
<div class="modal fade" id="importProductsModal" tabindex="-1" role="dialog" aria-labelledby="importProductsModalTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- Header -->
            <div class="modal-header">
                <h4 id="importProductsModalTitle" class="modal-title">Import products by CSV</h4>

                <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal"
                        aria-label="Close">
                    <i class="tio-clear tio-lg"></i>
                </button>
            </div>
            <!-- End Header -->

            <!-- Body -->
            <div class="modal-body">
                <p><a href="#">Download a sample CSV template</a> to see an example of the format required.</p>

                <!-- Form Group -->
                <div class="form-group">
                    <!-- Dropzone -->
                    <div id="attachFilesNewProjectLabel" class="js-dropzone dropzone-custom custom-file-boxed">
                        <div class="dz-message custom-file-boxed-label">
                            <img class="avatar avatar-xl avatar-4by3 mb-3" src="assets\svg\illustrations\browse.svg"
                                 alt="Image Description">
                            <h5 class="mb-1">Choose files to upload</h5>
                            <p class="mb-2">or</p>
                            <span class="btn btn-sm btn-primary">Browse files</span>
                        </div>
                    </div>
                    <!-- End Dropzone -->
                </div>
                <!-- End Form Group -->

                <!-- Custom Checkbox -->
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="overwriteCurrentProductsCheckbox">
                    <label class="custom-control-label" for="overwriteCurrentProductsCheckbox">Overwrite any current
                        products that have the same handle. Existing values will be used for any missing columns.<a
                                href="#">Learn more</a></label>
                </div>
                <!-- End Custom Checkbox -->
            </div>
            <!-- End Body -->

            <!-- Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-white mr-2" data-dismiss="modal" aria-label="Close">Cancel</button>
                <button type="button" class="btn btn-primary">Upload and continue</button>
            </div>
            <!-- End Footer -->
        </div>
    </div>
</div>
<!-- End Import Products Modal -->

<!-- Product Filter Modal -->
<div id="datatableFilterSidebar" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
    <div class="card card-lg sidebar-card sidebar-footer-fixed">
        <div class="card-header">
            <h4 class="card-header-title">Filters</h4>

            <!-- Toggle Button -->
            <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2" href="javascript:;"
               data-hs-unfold-options='{
                "target": "#datatableFilterSidebar",
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
        <div class="card-body sidebar-body sidebar-scrollbar">
            <small class="text-cap mb-3">Product vendor</small>

            <div class="row">
                <div class="col-6">
                    <!-- Custom Checkbox -->
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio1" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio1">Google</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio2" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio2">Topman</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio3" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio3">RayBan</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio4" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio4">Mango</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio5" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio5">Calvin Klein</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio6" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio6">Givenchy</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio7" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio7">Asos</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio8" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio8">Apple</label>
                    </div>
                    <!-- End Custom Checkbox -->
                </div>

                <div class="col-6">
                    <!-- Custom Checkbox -->
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio9" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio9">Times</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio10" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio10">Asos</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio11" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio11">Nike Jordan</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio12" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio12">VA RVCA</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio13" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio13">Levis</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio14" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio14">Beats</label>
                    </div>
                    <div class="custom-control custom-radio mb-2">
                        <input type="radio" id="productVendorFilterRadio15" name="productVendorFilterRadio"
                               class="custom-control-input">
                        <label class="custom-control-label" for="productVendorFilterRadio15">Clarks</label>
                    </div>
                    <!-- End Custom Checkbox -->
                </div>
            </div>
            <!-- End Row -->

            <a class="link mt-2" href="javascript:;">
                <i class="tio-clear"></i> Clear
            </a>

            <hr class="my-4">

            <small class="text-cap mb-3">Availability</small>

            <!-- Custom Checkbox -->
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productAvailabilityFilterRadio1" name="productAvailabilityFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productAvailabilityFilterRadio1">Available on Online
                    Store</label>
            </div>
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productAvailabilityFilterRadio2" name="productAvailabilityFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productAvailabilityFilterRadio2">Unavailable on Online
                    Store</label>
            </div>
            <!-- End Custom Checkbox -->

            <a class="link mt-2" href="javascript:;">
                <i class="tio-clear"></i> Clear
            </a>

            <hr class="my-4">

            <small class="text-cap mb-3">Tagged with</small>

            <div class="mb-2">
                <input type="text" class="js-tagify tagify-form-control form-control" name="tagsName" id="tagsLabel"
                       placeholder="Enter tags here" aria-label="Enter tags here">
            </div>

            <a class="link mt-2" href="javascript:;">
                <i class="tio-clear"></i> Clear
            </a>

            <hr class="my-4">

            <small class="text-cap mb-3">Product type</small>

            <!-- Custom Checkbox -->
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productTypeFilterRadio1" name="productTypeFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productTypeFilterRadio1">Shoes</label>
            </div>
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productTypeFilterRadio2" name="productTypeFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productTypeFilterRadio2">Accessories</label>
            </div>
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productTypeFilterRadio3" name="productTypeFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productTypeFilterRadio3">Clothing</label>
            </div>
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productTypeFilterRadio4" name="productTypeFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productTypeFilterRadio4">Electronics</label>
            </div>
            <!-- End Custom Checkbox -->

            <a class="link mt-2" href="javascript:;">
                <i class="tio-clear"></i> Clear
            </a>

            <hr class="my-4">

            <small class="text-cap mb-3">Collection</small>

            <!-- Input Group -->
            <div class="input-group input-group-merge mb-2">
                <div class="input-group-prepend">
              <span class="input-group-text">
                <i class="tio-search"></i>
              </span>
                </div>

                <input type="search" class="form-control" placeholder="Search for collections"
                       aria-label="Search for collections">
            </div>
            <!-- End Input Group -->

            <!-- Custom Checkbox -->
            <div class="custom-control custom-radio mb-2">
                <input type="radio" id="productCollectionFilterRadio1" name="productCollectionFilterRadio"
                       class="custom-control-input">
                <label class="custom-control-label" for="productCollectionFilterRadio1">Home page</label>
            </div>
            <!-- End Custom Checkbox -->

            <a class="link mt-2" href="javascript:;">
                <i class="tio-clear"></i> Clear
            </a>
        </div>
        <!-- End Body -->

        <!-- Footer -->
        <div class="card-footer sidebar-footer">
            <div class="row gx-2">
                <div class="col">
                    <button type="button" class="btn btn-block btn-white">Clear all filters</button>
                </div>
                <div class="col">
                    <button type="button" class="btn btn-block btn-primary">Save</button>
                </div>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Footer -->
    </div>
</div>
<!-- End Product Filter Modal -->
<!-- ========== END SECONDARY CONTENTS ========== -->


<!-- JS Implementing Plugins -->
<script src="assets\js\vendor.min.js"></script>


<!-- JS Front -->
<script src="assets\js\theme.min.js"></script>
<script src="assets\js\jquery-3.6.0.js" type="text/javascript"></script>
<script src="assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
<script src="assets\lib\jquery.gritter\js\jquery.gritter.js" type="text/javascript"></script>
<script>
    $(document).on('ready', function () {
        // ONLY DEV
        // =======================================================

        if (window.localStorage.getItem('hs-builder-popover') === null) {
            $('#builderPopover').popover('show')
                .on('shown.bs.popover', function () {
                    $('.popover').last().addClass('popover-dark')
                });

            $(document).on('click', '#closeBuilderPopover', function () {
                window.localStorage.setItem('hs-builder-popover', true);
                $('#builderPopover').popover('dispose');
            });
        } else {
            $('#builderPopover').on('show.bs.popover', function () {
                return false
            });
        }

        // END ONLY DEV
        // =======================================================


        // BUILDER TOGGLE INVOKER
        // =======================================================
        $('.js-navbar-vertical-aside-toggle-invoker').click(function () {
            $('.js-navbar-vertical-aside-toggle-invoker i').tooltip('hide');
        });


        // INITIALIZATION OF MEGA MENU
        // =======================================================
        var megaMenu = new HSMegaMenu($('.js-mega-menu'), {
            desktop: {
                position: 'left'
            }
        }).init();


        // INITIALIZATION OF NAVBAR VERTICAL NAVIGATION
        // =======================================================
        var sidebar = $('.js-navbar-vertical-aside').hsSideNav();


        // INITIALIZATION OF TOOLTIP IN NAVBAR VERTICAL MENU
        // =======================================================
        $('.js-nav-tooltip-link').tooltip({boundary: 'window'})

        $(".js-nav-tooltip-link").on("show.bs.tooltip", function (e) {
            if (!$("body").hasClass("navbar-vertical-aside-mini-mode")) {
                return false;
            }
        });


        // INITIALIZATION OF UNFOLD
        // =======================================================
        $('.js-hs-unfold-invoker').each(function () {
            var unfold = new HSUnfold($(this)).init();
        });


        // INITIALIZATION OF FORM SEARCH
        // =======================================================
        $('.js-form-search').each(function () {
            new HSFormSearch($(this)).init()
        });


        // INITIALIZATION OF NAV SCROLLER
        // =======================================================
        $('.js-nav-scroller').each(function () {
            new HsNavScroller($(this)).init()
        });


        // INITIALIZATION OF SELECT2
        // =======================================================
        $('.js-select2-custom').each(function () {
            var select2 = $.HSCore.components.HSSelect2.init($(this));
        });


        // INITIALIZATION OF DATATABLES
        // =======================================================
        var datatable = $.HSCore.components.HSDatatables.init($('#datatable'), {
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'copy',
                    className: 'd-none'
                },
                {
                    extend: 'excel',
                    className: 'd-none'
                },
                {
                    extend: 'csv',
                    className: 'd-none'
                },
                {
                    extend: 'pdf',
                    className: 'd-none'
                },
                {
                    extend: 'print',
                    className: 'd-none'
                },
            ],
            select: {
                style: 'multi',
                selector: 'td:first-child input[type="checkbox"]',
                classMap: {
                    checkAll: '#datatableCheckAll',
                    counter: '#datatableCounter',
                    counterInfo: '#datatableCounterInfo'
                }
            },
            language: {
                zeroRecords: '<div class="text-center p-4">' +
                    '<img class="mb-3" src="./assets/svg/illustrations/sorry.svg" alt="Image Description" style="width: 7rem;">' +
                    '<p class="mb-0">No data to show</p>' +
                    '</div>'
            }
        });

        $('#export-copy').click(function () {
            datatable.button('.buttons-copy').trigger()
        });

        $('#export-excel').click(function () {
            datatable.button('.buttons-excel').trigger()
        });

        $('#export-csv').click(function () {
            datatable.button('.buttons-csv').trigger()
        });

        $('#export-pdf').click(function () {
            datatable.button('.buttons-pdf').trigger()
        });

        $('#export-print').click(function () {
            datatable.button('.buttons-print').trigger()
        });

        $('#datatableSearch').on('mouseup', function (e) {
            var $input = $(this),
                oldValue = $input.val();

            if (oldValue == "") return;

            setTimeout(function () {
                var newValue = $input.val();

                if (newValue == "") {
                    // Gotcha
                    datatable.search('').draw();
                }
            }, 1);
        });

        $('#toggleColumn_order').change(function (e) {
            datatable.columns(1).visible(e.target.checked)
        })

        $('#toggleColumn_date').change(function (e) {
            datatable.columns(2).visible(e.target.checked)
        })

        $('#toggleColumn_customer').change(function (e) {
            datatable.columns(3).visible(e.target.checked)
        })

        $('#toggleColumn_payment_status').change(function (e) {
            datatable.columns(4).visible(e.target.checked)
        })

        datatable.columns(5).visible(false)

        $('#toggleColumn_fulfillment_status').change(function (e) {
            datatable.columns(5).visible(e.target.checked)
        })

        $('#toggleColumn_payment_method').change(function (e) {
            datatable.columns(6).visible(e.target.checked)
        })

        $('#toggleColumn_total').change(function (e) {
            datatable.columns(7).visible(e.target.checked)
        })

        $('#toggleColumn_actions').change(function (e) {
            datatable.columns(8).visible(e.target.checked)
        })


        // INITIALIZATION OF TAGIFY
        // =======================================================
        $('.js-tagify').each(function () {
            var tagify = $.HSCore.components.HSTagify.init($(this));
        });
    });
</script>
<!-- IE Support -->
<script>
    if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>');
</script>
<script type="text/javascript">
    // $(document).ready(function(){
    <%--        ${requestScope.successful}--%>
    $.extend($.gritter.options, {position: 'bottom-right'}), $.gritter.add({
        title: 'Success',
        text: 'you have edit added!',
        class_name: 'color success'
    }), !1;
</script>
<script>
    function dele(id) {
        if (confirm("are you sure to delete it?") === true) {
            window.location.href ="/product?action=delete&id=" +id;
        }
    }
</script>
</body>
</html>
