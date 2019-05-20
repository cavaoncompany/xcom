<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="xcom blog">
    <title>XCOM</title>

    <!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/pricing/"> -->

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/6773FB36-6498-364E-8507-8569F6DD40C7/main.js" charset="UTF-8"></script> -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://smtpjs.com/v3/smtp.js">
    </script>
    <script src="../js/email.js?ver={{date('YmdHis')}}" ></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="xcomstyle.css?ver={{date('YmdHis')}}">
    @foreach($content as $one)
    <?php  $xcomcontent[$one->category] = $one->content  ?>
    @endforeach
</head>
<style>
     #about {
        position: relative;
        text-align: center;
        color: white;
        background-image: url(<?php echo $xcomcontent['AboutBackgroundImageUrl'] ?>);
        width:100%;
        background-size: 100% 100%;
        height:300px;
        margin: 150px 0 50px 0;
        }

    .hero-image {
        background-image: linear-gradient(90deg, rgba(32, 53, 32, 1) 0%, rgba(32, 53, 32, 0.5) 50%, rgba(255, 255, 255, 0.5) 100%), url(<?php echo $xcomcontent['MainImageUrl'] ?>);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        position: relative;
        height: 662px;
        }

</style>
<body>
    <nav class="navbar ">
        <div class="container align-center">
            <div class="row">
                <div class=" col-md-6  my-5">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#"><img src='<?php echo $xcomcontent['LOGOImageUrl'] ?>'  alt="logo"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#ourServices">SERVICE</a></li>
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#contactform">CONTACT</a></li>
                        <li style="color:#2c5e2e; padding: 13px 0 0 30px;">
                            <img src='<?php echo $xcomcontent['PhoneIconImageUrl'] ?>' />&nbsp; &nbsp; {{ $xcomcontent['PhoneNumber']}}
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </nav>

    <div class="hero-image">

        <div class="hero-text align-center">
            <div class="container">
                <h1>{{ $xcomcontent['MainTitle'] }}</h1>
                <p style="padding: 30px 0 40px 0; font-size:18px;">{{ $xcomcontent['MainDescription']}}</p>
                <a type="button" class="startBtnStyle">Go Started Now</a>

            </div>
        </div>
    </div>

    <div class="services-header text-center" id="ourServices">
        <h3 style="font-size: 24px; color:#212121; ">{{ $xcomcontent['ServiceTitle'] }}</h3>
        <div class="line" style="padding-top:15px"></div>
    </div>

    <div class="container" id="serviceDetails">
        <div class="row">
            <div class="col-md-3 ">
                <div style=" max-height:300px; margin: 0 5px ">
                    <h1 class="my-0 font-weight-normal">01</h1>
                    <h4>{{ $xcomcontent['FirstServiceTitle']}}</h4>
                    <p>{{ $xcomcontent['FirstServiceDescription']}}</p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div style="max-height:300px; margin: 5px ">
                    <h1 class="my-0 font-weight-normal">02</h1>
                    <h4>{{ $xcomcontent['SecondServiceTitle']}}</h4>
                    <p>{{ $xcomcontent['SecondServiceDescription']}}</p>

                </div>
            </div>
            <div class="col-md-3 ">
                <div style="max-height:300px; margin: 5px ">
                    <h1 class="my-0 font-weight-normal ">03</h1>

                    <h4>{{ $xcomcontent['ThirdServiceTitle']}}</h4>
                    <p>{{ $xcomcontent['ThirdServiceDescription']}}</p>
                </div>
            </div>
            <div class="col-md-3">
                <div style="max-height:300px; margin:5px;">
                    <h1 class="my-0 font-weight-normal">04</h1>
                    <h4>{{ $xcomcontent['FourthServiceTitle']}}</h4>
                    <p>{{ $xcomcontent['FourthServiceDescription']}}</p>

                </div>
            </div>

        </div>
    </div>

    <div id="about">
        <p class="centered">{{ $xcomcontent['AboutDescription']}}</p>
    </div>

    <div id="contactform" class="container text-center my-5">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 40px;">
                <h4 style="margin: 30px 0; font-size:24px;">Contact Us</h4>
                <div class="line"></div>
            </div>
            <div class="col-md-12">     
            <div class="col-md-6 inputstyle">
                
                <input type="text" class="form-control" id="firstname" placeholder="* First name">
                <span id="firstnameerror" class="errormsg"></span>
            </div>
            <div class="col-md-6 inputstyle">
                
                <input type="text" class="form-control" id="lastname" placeholder="* Last name">
                <span id="lastnameerror" class="errormsg"></span>
            </div>
        </div>
        <div class="col-md-12">
            <div class="col-md-6 inputstyle">
            
                <input type="email" class="form-control"  id="email" placeholder="* Email">
                <span id="emailerror" class="errormsg"></span>
            </div>
            <div class="col-md-6 inputstyle">
                <input type="number" class="form-control" id="phonenumber" placeholder="Phone" height="50px">
            </div>
        </div>
            <div class="col-md-12 inputstyle">
                <textarea type="text" class="form-control" id="message" placeholder="Message"
                    style="margin-bottom:20px; margin:0 auto; width:94%" rows="6"></textarea>
            </div>
            <div class="col-md-12 inputstyle">
                <button type="submit" class="btn btn-outline-primary" onclick="sendEmail()">Send Message</button>
            </div>
        </div>
    </div>
    <footer class="container-fluid py-4" style=" background: #153f17; margin-top:50px; padding:20px; color:#FFF">
        <div class="row ">
            <div class="col-md-4 text-center" style="padding: 20px 0 10px 0">

                <nav>
                    <a style="color:white; margin:5px 30px; font-size:15px;" href="#ourServices">SERVICES</a>
                    <a style="color:white; margin:5px; font-size:15px;" href="#about">ABOUT</a>
                    <a style="color:white; margin:30px; font-size:15px;" href="#contactform">CONTACT</a>
                </nav>
            </div>
            <div class="col-md-4 text-center" style="padding: 10px 0;">
                <img src="../images/Footerlogo.png" alt="footerlogoimg" />
            </div>
            <div class="col-md-4 text-center">
                <p style="font-size:14px; padding: 25px 0 10px 0;">{{ $xcomcontent['FooterCopyright']}}</p>
            </div>

        </div>
    </footer>

</body>

</html>