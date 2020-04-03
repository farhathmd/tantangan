<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Appointment</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="{{ ('img/favicon.png ') }}">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="{{ ('css/bootstrap.min.css ') }}">
        <link rel="stylesheet" href="{{ ('css/owl.carousel.min.css ') }}">
        <link rel="stylesheet" href="{{ ('css/magnific-popup.css ') }}">
        <link rel="stylesheet" href="{{ ('css/font-awesome.min.css ') }}">
        <link rel="stylesheet" href="{{ ('css/themify-icons.css ') }}">
        <link rel="stylesheet" href="{{ ('css/nice-select.css ') }}">
        <link rel="stylesheet" href="{{ ('css/flaticon.css ') }}">
        <link rel="stylesheet" href="{{ ('css/gijgo.css ') }}">
        <link rel="stylesheet" href="{{ ('css/animate.css ') }}">
        <link rel="stylesheet" href="{{ ('css/slicknav.css ') }}">
        <link rel="stylesheet" href="{{ ('css/style.css ') }}">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
<body>
    <div class="book_apointment_area">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-lg-7">
                    <div class="popup_box ">
                        <div class="popup_inner">
                            <h3>
                                Book an
                            <span>Appointment</span>
                            </h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Please select doctor to visit">Please select doctor to visit </option>
                                            <option value="1">Anaf</option>
                                            <option value="2">Nayna Therapy</option>
                                            <option value="3">Nadif</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-9">
                                        <input type="text"  placeholder="Your name ">
                                    </div>
                                    <div class="col-xl-3">
                                        <input type="text"  placeholder="Your age">
                                    </div>
                                    <div class="col-xl-6">
                                        <input type="text"  placeholder="Phone number ">
                                    </div>
                                    <div class="col-xl-6">
                                        <input type="email"  placeholder="Email Address">
                                    </div>
                                    <div class="col-xl-6">
                                        <input class="datepicker" placeholder="Appointment Date">
                                    </div>
                                    <div class="col-xl-6">
                                        <input class="timepicker" placeholder="Suitable time">
                                    </div>
                                    <div class="col-xl-12">
                                        <button type="submit" class="boxed-btn3">Make an Appointment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js "></script>
<script src="js/vendor/jquery-1.12.4.min.js "></script>
<script src="js/popper.min.js "></script>
<script src="js/bootstrap.min.js "></script>
<script src="js/owl.carousel.min.js "></script>
<script src="js/isotope.pkgd.min.js "></script>
<script src="js/ajax-form.js "></script>
<script src="js/waypoints.min.js "></script>
<script src="js/jquery.counterup.min.js "></script>
<script src="js/imagesloaded.pkgd.min.js "></script>
<script src="js/scrollIt.js "></script>
<script src="js/jquery.scrollUp.min.js "></script>
<script src="js/wow.min.js "></script>
<script src="js/nice-select.min.js "></script>
<script src="js/jquery.slicknav.min.js "></script>
<script src="js/jquery.magnific-popup.min.js "></script>
<script src="js/plugins.js "></script>
<script src="js/gijgo.min.js "></script>
<!--contact js-->
<script src="js/contact.js "></script>
<script src="js/jquery.ajaxchimp.min.js "></script>
<script src="js/jquery.form.js "></script>
<script src="js/jquery.validate.min.js "></script>
<script src="js/mail-script.js "></script>

<script src="js/main.js "></script>
<script>
    $('.datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-calendar"></span>'
        }
    });

    $('.timepicker').timepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-clock-o"></span>'
        }
    });
$(document).ready(function() {
$('.js-example-basic-multiple').select2();
});
</script>
</body>

</html>
</body>
</html>
