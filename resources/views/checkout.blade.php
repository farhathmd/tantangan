<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Checkout</title>
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
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
<div class="book_apointment_area">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-lg-7">
                            <h2 align="center">Pilih Tindakan Yang Akan Anda Lakukan.</h2>
                            <br/><br/>
                            <form role="form">
                                <div class="row">
                                    <div class="col-md-3">
                                        <fieldset>
                                            <legend align="center">
                                                Gigi
                                            </legend>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="CabutGigi">Cabut Gigi
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="TambalGigi">Tambal Gigi
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Devitalisasi">Devitalisasi
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Sterilisasi">Sterilisasi
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Scalling">Scalling
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Bleaching">Bleaching
                                            </div>
                                            <br/><br/>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-3">
                                        <fieldset>
                                            <legend align="center">
                                                Jantung
                                            </legend>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Pasang1Ring">Pasang 1 Ring
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Pasang2Ring">Pasang 2 Ring
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="Pasang3Ring">Pasang 3 Ring
                                            </div>
                                            <br/><br/>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-3">
                                        <fieldset>
                                            <legend align="center">
                                                Paru-Paru
                                            </legend>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="TesSwab">Tes Swab
                                            </div>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="RontgentParu">Rontgent Paru
                                            </div>
                                            <br/><br/>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-3">
                                        <fieldset>
                                            <legend align="center">
                                                Tulang
                                            </legend>
                                            <div>
                                                <input type="checkbox" name="checkbox_list[]" alt="checkbox" value="BMDScan">BMD Scan
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                                <center>
                                    <input type="submit" name="tampil" value="Submit"/>
                                </center>
                            </form>>
                            <?php
                                if(isset($_POST['tampil'])){
                                    if(empty($_POST['checkbox_list'])){
                                    }
                                    else{
                                        echo "Anda memilih;<br/><br/>"; 
                                        foreach($_POST['checkbox_list'] as $item){  
                                            echo $item ."<br/>";
                                        }
                                    }
                                }
                            ?>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
