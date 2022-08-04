<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="/WEB-INF/admin/layout/head.jsp"></jsp:include>
</head>

<body class="   footer-offset">
<script src="/assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>
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

<main id="content" role="main" class="main pointer-event">
    <!-- Content -->
    <div class="content container-fluid">
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

        <!-- Stats -->
        <div class="row gx-2 gx-lg-3">
            <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
                <!-- Card -->
                <a class="card card-hover-shadow h-100" href="#">
                    <div class="card-body">
                        <h6 class="card-subtitle">Total Users</h6>

                        <div class="row align-items-center gx-2 mb-1">
                            <div class="col-6">
                                <span class="card-title h2">72,540</span>
                            </div>

                            <div class="col-6">
                                <!-- Chart -->
                                <div class="chartjs-custom" style="height: 3rem;">
                                    <canvas class="js-chart" data-hs-chartjs-options='{
                                "type": "line",
                                "data": {
                                   "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                   "datasets": [{
                                    "data": [21,20,24,20,18,17,15,17,18,30,31,30,30,35,25,35,35,40,60,90,90,90,85,70,75,70,30,30,30,50,72],
                                    "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                    "borderColor": "#377dff",
                                    "borderWidth": 2,
                                    "pointRadius": 0,
                                    "pointHoverRadius": 0
                                  }]
                                },
                                "options": {
                                   "scales": {
                                     "yAxes": [{
                                       "display": false
                                     }],
                                     "xAxes": [{
                                       "display": false
                                     }]
                                   },
                                  "hover": {
                                    "mode": "nearest",
                                    "intersect": false
                                  },
                                  "tooltips": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }'>
                                    </canvas>
                                </div>
                                <!-- End Chart -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <span class="badge badge-soft-success">
                <i class="tio-trending-up"></i> 12.5%
              </span>
                        <span class="text-body font-size-sm ml-1">from 70,104</span>
                    </div>
                </a>
                <!-- End Card -->
            </div>

            <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
                <!-- Card -->
                <a class="card card-hover-shadow h-100" href="#">
                    <div class="card-body">
                        <h6 class="card-subtitle">Sessions</h6>

                        <div class="row align-items-center gx-2 mb-1">
                            <div class="col-6">
                                <span class="card-title h2">29.4%</span>
                            </div>

                            <div class="col-6">
                                <!-- Chart -->
                                <div class="chartjs-custom" style="height: 3rem;">
                                    <canvas class="js-chart" data-hs-chartjs-options='{
                                "type": "line",
                                "data": {
                                   "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                   "datasets": [{
                                    "data": [21,20,24,20,18,17,15,17,30,30,35,25,18,30,31,35,35,90,90,90,85,100,120,120,120,100,90,75,75,75,90],
                                    "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                    "borderColor": "#377dff",
                                    "borderWidth": 2,
                                    "pointRadius": 0,
                                    "pointHoverRadius": 0
                                  }]
                                },
                                "options": {
                                   "scales": {
                                     "yAxes": [{
                                       "display": false
                                     }],
                                     "xAxes": [{
                                       "display": false
                                     }]
                                   },
                                  "hover": {
                                    "mode": "nearest",
                                    "intersect": false
                                  },
                                  "tooltips": {
                                    "postfix": "%",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }'>
                                    </canvas>
                                </div>
                                <!-- End Chart -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <span class="badge badge-soft-success">
                <i class="tio-trending-up"></i> 1.7%
              </span>
                        <span class="text-body font-size-sm ml-1">from 29.1%</span>
                    </div>
                </a>
                <!-- End Card -->
            </div>

            <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
                <!-- Card -->
                <a class="card card-hover-shadow h-100" href="#">
                    <div class="card-body">
                        <h6 class="card-subtitle">Avg. Click Rate</h6>

                        <div class="row align-items-center gx-2 mb-1">
                            <div class="col-6">
                                <span class="card-title h2">56.8%</span>
                            </div>

                            <div class="col-6">
                                <!-- Chart -->
                                <div class="chartjs-custom" style="height: 3rem;">
                                    <canvas class="js-chart" data-hs-chartjs-options='{
                                "type": "line",
                                "data": {
                                   "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                   "datasets": [{
                                    "data": [25,18,30,31,35,35,60,60,60,75,21,20,24,20,18,17,15,17,30,120,120,120,100,90,75,90,90,90,75,70,60],
                                    "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                    "borderColor": "#377dff",
                                    "borderWidth": 2,
                                    "pointRadius": 0,
                                    "pointHoverRadius": 0
                                  }]
                                },
                                "options": {
                                   "scales": {
                                     "yAxes": [{
                                       "display": false
                                     }],
                                     "xAxes": [{
                                       "display": false
                                     }]
                                   },
                                  "hover": {
                                    "mode": "nearest",
                                    "intersect": false
                                  },
                                  "tooltips": {
                                    "postfix": "%",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }'>
                                    </canvas>
                                </div>
                                <!-- End Chart -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <span class="badge badge-soft-danger">
                <i class="tio-trending-down"></i> 4.4%
              </span>
                        <span class="text-body font-size-sm ml-1">from 61.2%</span>
                    </div>
                </a>
                <!-- End Card -->
            </div>

            <div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
                <!-- Card -->
                <a class="card card-hover-shadow h-100" href="#">
                    <div class="card-body">
                        <h6 class="card-subtitle">Pageviews</h6>

                        <div class="row align-items-center gx-2 mb-1">
                            <div class="col-6">
                                <span class="card-title h2">92,913</span>
                            </div>

                            <div class="col-6">
                                <!-- Chart -->
                                <div class="chartjs-custom" style="height: 3rem;">
                                    <canvas class="js-chart" data-hs-chartjs-options='{
                                "type": "line",
                                "data": {
                                   "labels": ["1 May","2 May","3 May","4 May","5 May","6 May","7 May","8 May","9 May","10 May","11 May","12 May","13 May","14 May","15 May","16 May","17 May","18 May","19 May","20 May","21 May","22 May","23 May","24 May","25 May","26 May","27 May","28 May","29 May","30 May","31 May"],
                                   "datasets": [{
                                    "data": [21,20,24,15,17,30,30,35,35,35,40,60,12,90,90,85,70,75,43,75,90,22,120,120,90,85,100,92,92,92,92],
                                    "backgroundColor": ["rgba(55, 125, 255, 0)", "rgba(255, 255, 255, 0)"],
                                    "borderColor": "#377dff",
                                    "borderWidth": 2,
                                    "pointRadius": 0,
                                    "pointHoverRadius": 0
                                  }]
                                },
                                "options": {
                                   "scales": {
                                     "yAxes": [{
                                       "display": false
                                     }],
                                     "xAxes": [{
                                       "display": false
                                     }]
                                   },
                                  "hover": {
                                    "mode": "nearest",
                                    "intersect": false
                                  },
                                  "tooltips": {
                                    "postfix": "k",
                                    "hasIndicator": true,
                                    "intersect": false
                                  }
                                }
                              }'>
                                    </canvas>
                                </div>
                                <!-- End Chart -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <span class="badge badge-soft-secondary">0.0%</span>
                        <span class="text-body font-size-sm ml-1">from 2,913</span>
                    </div>
                </a>
                <!-- End Card -->
            </div>
        </div>
        <!-- End Stats -->

        <div class="row gx-2 gx-lg-3">
            <div class="col-lg-5 mb-3 mb-lg-5">
                <!-- Card -->
                <div class="card h-100">
                    <!-- Header -->
                    <div class="card-header">
                        <h5 class="card-header-title">Import data into Front Dashboard</h5>

                        <!-- Unfold -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle"
                               href="javascript:;" data-hs-unfold-options='{
                       "target": "#reportsOverviewDropdown2",
                       "type": "css-animation"
                     }'>
                                <i class="tio-more-vertical"></i>
                            </a>

                            <div id="reportsOverviewDropdown2"
                                 class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                                <span class="dropdown-header">Settings</span>

                                <a class="dropdown-item" href="#">
                                    <i class="tio-share dropdown-item-icon"></i> Share chart
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-download-to dropdown-item-icon"></i> Download
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-alt dropdown-item-icon"></i> Connect other apps
                                </a>

                                <div class="dropdown-divider"></div>

                                <span class="dropdown-header">Feedback</span>

                                <a class="dropdown-item" href="#">
                                    <i class="tio-chat-outlined dropdown-item-icon"></i> Report
                                </a>
                            </div>
                        </div>
                        <!-- End Unfold -->
                    </div>
                    <!-- End Header -->

                    <!-- Body -->
                    <div class="card-body">
                        <p>See and talk to your users and leads immediately by importing your data into the Front
                            Dashboard
                            platform.</p>

                        <ul class="list-group list-group-flush list-group-no-gutters">
                            <li class="list-group-item py-3">
                                <h5 class="modal-title">Import users from:</h5>
                            </li>

                            <!-- List Group Item -->
                            <li class="list-group-item py-3">
                                <div class="media">
                                    <div class="mt-1 mr-3">
                                        <img class="avatar avatar-xs avatar-4by3" src="assets\svg\brands\capsule.svg"
                                             alt="Image Description">
                                    </div>
                                    <div class="media-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h5 class="mb-0">Capsule</h5>
                                                <span class="d-block font-size-sm">Users</span>
                                            </div>

                                            <div class="col-auto">
                                                <a class="btn btn-sm btn-primary" href="#" title="Launch importer"
                                                   target="_blank">
                                                    Launch <span class="d-none d-sm-inline-block">importer</span>
                                                    <i class="tio-open-in-new ml-1"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- End Row -->
                                    </div>
                                </div>
                            </li>
                            <!-- End List Group Item -->

                            <!-- List Group Item -->
                            <li class="list-group-item py-3">
                                <div class="media">
                                    <div class="mt-1 mr-3">
                                        <img class="avatar avatar-xs avatar-4by3" src="assets\svg\brands\mailchimp.svg"
                                             alt="Image Description">
                                    </div>
                                    <div class="media-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h5 class="mb-0">Mailchimp</h5>
                                                <span class="d-block font-size-sm">Users</span>
                                            </div>

                                            <div class="col-auto">
                                                <a class="btn btn-sm btn-primary" href="#" title="Launch importer"
                                                   target="_blank">
                                                    Launch <span class="d-none d-sm-inline-block">importer</span>
                                                    <i class="tio-open-in-new ml-1"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- End Row -->
                                    </div>
                                </div>
                            </li>
                            <!-- End List Group Item -->

                            <!-- List Group Item -->
                            <li class="list-group-item py-3">
                                <div class="media">
                                    <div class="mt-1 mr-3">
                                        <img class="avatar avatar-xs avatar-4by3"
                                             src="assets\svg\brands\google-webdev.svg"
                                             alt="Image Description">
                                    </div>
                                    <div class="media-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h5 class="mb-0">Webdev</h5>
                                                <span class="d-block font-size-sm">Users</span>
                                            </div>

                                            <div class="col-auto">
                                                <a class="btn btn-sm btn-primary" href="#" title="Launch importer"
                                                   target="_blank">
                                                    Launch <span class="d-none d-sm-inline-block">importer</span>
                                                    <i class="tio-open-in-new ml-1"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- End Row -->
                                    </div>
                                </div>
                            </li>
                            <!-- End List Group Item -->

                            <li class="list-group-item"><small>Or you can <a href="#">sync data to Front Dashboard</a>
                                to ensure
                                your data is always up-to-date.</small></li>
                        </ul>
                    </div>
                    <!-- End Body -->
                </div>
                <!-- End Card -->
            </div>

            <div class="col-lg-7 mb-3 mb-lg-5">
                <!-- Card -->
                <div class="card h-100">
                    <!-- Header -->
                    <div class="card-header">
                        <h5 class="card-header-title">Monthly expenses</h5>

                        <!-- Nav -->
                        <ul class="nav nav-segment" id="expensesTab" role="tablist">
                            <li class="nav-item" data-toggle="chart-bar" data-datasets="thisWeek" data-trigger="click"
                                data-action="toggle">
                                <a class="nav-link active" href="javascript:;" data-toggle="tab">This week</a>
                            </li>
                            <li class="nav-item" data-toggle="chart-bar" data-datasets="lastWeek" data-trigger="click"
                                data-action="toggle">
                                <a class="nav-link" href="javascript:;" data-toggle="tab">Last week</a>
                            </li>
                        </ul>
                        <!-- End Nav -->
                    </div>
                    <!-- End Header -->

                    <!-- Body -->
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-sm mb-2 mb-sm-0">
                                <div class="d-flex align-items-center">
                                    <span class="h1 mb-0">35%</span>
                                    <span class="text-success ml-2">
                      <i class="tio-trending-up"></i> 25.3%
                    </span>
                                </div>
                            </div>

                            <div class="col-sm-auto align-self-sm-end">
                                <!-- Legend Indicators -->
                                <div class="row font-size-sm">
                                    <div class="col-auto">
                                        <span class="legend-indicator bg-primary"></span> New
                                    </div>
                                    <div class="col-auto">
                                        <span class="legend-indicator"></span> Overdue
                                    </div>
                                </div>
                                <!-- End Legend Indicators -->
                            </div>
                        </div>
                        <!-- End Row -->

                        <!-- Bar Chart -->
                        <div class="chartjs-custom">
                            <canvas id="updatingData" style="height: 20rem;" data-hs-chartjs-options='{
                            "type": "bar",
                            "data": {
                              "labels": ["May 1", "May 2", "May 3", "May 4", "May 5", "May 6", "May 7", "May 8", "May 9", "May 10"],
                              "datasets": [{
                                "data": [200, 300, 290, 350, 150, 350, 300, 100, 125, 220],
                                "backgroundColor": "#377dff",
                                "hoverBackgroundColor": "#377dff",
                                "borderColor": "#377dff"
                              },
                              {
                                "data": [150, 230, 382, 204, 169, 290, 300, 100, 300, 225, 120],
                                "backgroundColor": "#e7eaf3",
                                "borderColor": "#e7eaf3"
                              }]
                            },
                            "options": {
                              "scales": {
                                "yAxes": [{
                                  "gridLines": {
                                    "color": "#e7eaf3",
                                    "drawBorder": false,
                                    "zeroLineColor": "#e7eaf3"
                                  },
                                  "ticks": {
                                    "beginAtZero": true,
                                    "stepSize": 100,
                                    "fontSize": 12,
                                    "fontColor": "#97a4af",
                                    "fontFamily": "Open Sans, sans-serif",
                                    "padding": 10,
                                    "postfix": "$"
                                  }
                                }],
                                "xAxes": [{
                                  "gridLines": {
                                    "display": false,
                                    "drawBorder": false
                                  },
                                  "ticks": {
                                    "fontSize": 12,
                                    "fontColor": "#97a4af",
                                    "fontFamily": "Open Sans, sans-serif",
                                    "padding": 5
                                  },
                                  "categoryPercentage": 0.5,
                                  "maxBarThickness": "10"
                                }]
                              },
                              "cornerRadius": 2,
                              "tooltips": {
                                "prefix": "$",
                                "hasIndicator": true,
                                "mode": "index",
                                "intersect": false
                              },
                              "hover": {
                                "mode": "nearest",
                                "intersect": true
                              }
                            }
                          }'></canvas>
                        </div>
                        <!-- End Bar Chart -->
                    </div>
                    <!-- End Body -->
                </div>
                <!-- End Card -->
            </div>
        </div>
        <!-- End Row -->
        <div class="row gx-2 gx-lg-3">
            <div class="col-lg-6 mb-3 mb-lg-0">
                <!-- Card -->
                <div class="card h-100">
                    <!-- Header -->
                    <div class="card-header">
                        <h5 class="card-header-title">Transactions</h5>

                        <!-- Daterangepicker -->
                        <button id="js-daterangepicker-predefined"
                                class="btn btn-sm btn-ghost-secondary dropdown-toggle">
                            <i class="tio-date-range"></i>
                            <span class="js-daterangepicker-predefined-preview ml-1"></span>
                        </button>
                        <!-- End Daterangepicker -->
                    </div>
                    <!-- End Header -->

                    <!-- Body -->
                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chartjs-custom mx-auto" style="height: 20rem;">
                            <canvas class="js-chart-datalabels" data-hs-chartjs-options='{
                            "type": "bubble",
                            "data": {
                              "datasets": [
                                {
                                  "label": "Label 1",
                                  "data": [
                                    {"x": 55, "y": 65, "r": 99}
                                  ],
                                  "color": "#fff",
                                  "backgroundColor": "rgba(55,125,255,.9)",
                                  "borderColor": "transparent"
                                },
                                {
                                  "label": "Label 2",
                                  "data": [
                                    {"x": 33, "y": 42, "r": 65}
                                  ],
                                  "color": "#fff",
                                  "backgroundColor": "rgba(100, 0, 214, 0.8)",
                                  "borderColor": "transparent"
                                },
                                {
                                  "label": "Label 3",
                                  "data": [
                                    {"x": 46, "y": 26, "r": 38}
                                  ],
                                  "color": "#fff",
                                  "backgroundColor": "#00c9db",
                                  "borderColor": "transparent"
                                }
                              ]
                            },
                            "options": {
                              "scales": {
                                "yAxes": [{
                                  "gridLines": {
                                    "display": false
                                  },
                                  "ticks": {
                                    "display": false,
                                    "max": 100,
                                    "beginAtZero": true
                                  }
                                }],
                                "xAxes": [{
                                "gridLines": {
                                    "display": false
                                  },
                                  "ticks": {
                                    "display": false,
                                    "max": 100,
                                    "beginAtZero": true
                                  }
                                }]
                              },
                              "tooltips": false
                            }
                          }'></canvas>
                        </div>
                        <!-- End Chart -->

                        <!-- Legend Indicators -->
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <span class="legend-indicator bg-primary"></span> New
                            </div>

                            <div class="col-auto">
                                <span class="legend-indicator" style="background-color: #7000f2;"></span> Pending
                            </div>

                            <div class="col-auto">
                                <span class="legend-indicator bg-info"></span> Failed
                            </div>
                        </div>
                        <!-- End Legend Indicators -->
                    </div>
                    <!-- End Body -->
                </div>
                <!-- End Card -->
            </div>

            <div class="col-lg-6">
                <!-- Card -->
                <div class="card h-100">
                    <!-- Header -->
                    <div class="card-header">
                        <h5 class="card-header-title">Reports overview</h5>

                        <!-- Unfold -->
                        <div class="hs-unfold">
                            <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle"
                               href="javascript:;" data-hs-unfold-options='{
                       "target": "#reportsOverviewDropdown1",
                       "type": "css-animation"
                     }'>
                                <i class="tio-more-vertical"></i>
                            </a>

                            <div id="reportsOverviewDropdown1"
                                 class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                                <span class="dropdown-header">Settings</span>

                                <a class="dropdown-item" href="#">
                                    <i class="tio-share dropdown-item-icon"></i> Share reports
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-download-to dropdown-item-icon"></i> Download
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="tio-alt dropdown-item-icon"></i> Connect other apps
                                </a>

                                <div class="dropdown-divider"></div>

                                <span class="dropdown-header">Feedback</span>

                                <a class="dropdown-item" href="#">
                                    <i class="tio-chat-outlined dropdown-item-icon"></i> Report
                                </a>
                            </div>
                        </div>
                        <!-- End Unfold -->
                    </div>
                    <!-- End Header -->

                    <!-- Body -->
                    <div class="card-body">
                        <span class="h1 d-block mb-4">$7,431.14 USD</span>

                        <!-- Progress -->
                        <div class="progress rounded-pill mb-2">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25"
                                 aria-valuemin="0"
                                 aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                 title="Gross value"></div>
                            <div class="progress-bar opacity" role="progressbar" style="width: 33%" aria-valuenow="33"
                                 aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                 title="Net volume from sales"></div>
                            <div class="progress-bar opacity-xs" role="progressbar" style="width: 9%" aria-valuenow="9"
                                 aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                 title="New volume from sales"></div>
                        </div>

                        <div class="d-flex justify-content-between mb-4">
                            <span>0%</span>
                            <span>100%</span>
                        </div>
                        <!-- End Progress -->

                        <!-- Table -->
                        <div class="table-responsive">
                            <table class="table table-lg table-nowrap card-table mb-0">
                                <tr>
                                    <th scope="row">
                                        <span class="legend-indicator bg-primary"></span>Gross value
                                    </th>
                                    <td>$3,500.71</td>
                                    <td>
                                        <span class="badge badge-soft-success">+12.1%</span>
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">
                                        <span class="legend-indicator bg-primary opacity"></span>Net volume from sales
                                    </th>
                                    <td>$2,980.45</td>
                                    <td>
                                        <span class="badge badge-soft-warning">+6.9%</span>
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">
                                        <span class="legend-indicator bg-primary opacity-xs"></span>New volume from
                                        sales
                                    </th>
                                    <td>$950.00</td>
                                    <td>
                                        <span class="badge badge-soft-danger">-1.5%</span>
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">
                                        <span class="legend-indicator"></span>Other
                                    </th>
                                    <td>32</td>
                                    <td>
                                        <span class="badge badge-soft-success">1.9%</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- End Table -->
                    </div>
                    <!-- End Body -->
                </div>
                <!-- End Card -->
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
                                   href="javascript:;"
                                   data-hs-unfold-options='{
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
                                        <h5 class="text-body mb-0">Amanda Harvey <i class="tio-verified text-primary"
                                                                                    data-toggle="tooltip"
                                                                                    data-placement="top"
                                                                                    title="Top endorsed"></i></h5>
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
</body>
</html>