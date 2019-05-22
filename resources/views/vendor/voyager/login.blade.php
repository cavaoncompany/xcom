<!DOCTYPE html>
<html lang="{{ config('app.locale') }}" dir="{{ __('voyager::generic.is_rtl') == 'true' ? 'rtl' : 'ltr' }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="none" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="admin login">
    <title>Admin - {{ Voyager::setting("admin.title") }}</title>
    <link rel="stylesheet" href="{{ voyager_asset('css/app.css') }}">
    @if (__('voyager::generic.is_rtl') == 'true')
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-rtl/3.4.0/css/bootstrap-rtl.css">
        <!-- <link rel="stylesheet" href="{{ voyager_asset('css/rtl.css') }}"> -->
    @endif
   
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
</head>
<style>
    html, body{
        height:100%;
    }


    .Aligner {
  display: flex;
  align-items: center;

  justify-content: center;
}

.Aligner-item {
  flex: 1;
  max-width:30%;
  margin-top:35%;
}
@media only screen and (max-width: 767px) {
    .Aligner-item {
        display:block;
        margin:20px auto;
        margin-left:110px;
    }
    .Aligner-item-bottom{
        color:white;
    }
}

@media only screen and (min-width:767px) and (max-width: 1024px) {
    .Aligner-item {
        margin-top:100%;
    }
}
.Aligner-item-bottom
{
    position: fixed;
    bottom: 0;
}

.login-sidebar{
    background: #2c5e2e !important;
   
}
.login-container p{
    color:white !important;
    font-size: 16px !important;
    }

.remember-me-text{
        color: white !important;
    }
    .login-button{
        background-color: white !important;
        color:#2c5e2e !important;
    }
</style>
<body class="login">
<div class="container-fluid">
    <div class="row">
        
        <div class="col-xs-12 col-sm-7 col-md-8">
         
                <!-- <div class="col-sm-12 col-md-10 col-md-offset-2">
                    
                        <div class="adminLoginImg ">
                            <img src="http://localhost/cms/public/storage/XCOMHomePage/xcomlogo.png" width="20%"/>
                        </div>
                       
                            
                            <p>{{ Voyager::setting('admin.description', __('voyager::login.welcome')) }}</p>
                        
                    
                </div> -->
                <div class="Aligner">
 
                    <div class="Aligner-item">
                        <img src="http://localhost/cms/public/storage/XCOMHomePage/xcomlogo.png" />
                    </div>
                   
                </div>
            
        </div>
       
        
        <div class="col-xs-12 col-sm-5 col-md-4 login-sidebar">

            <div class="login-container">

                <p>{{ __('voyager::login.signin_below') }}</p>

                <form action="{{ route('voyager.login') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group form-group-default" id="emailGroup">
                        <label>{{ __('voyager::generic.email') }}</label>
                        <div class="controls">
                            <input type="text" name="email" id="email" value="{{ old('email') }}" placeholder="{{ __('voyager::generic.email') }}" class="form-control" required>
                         </div>
                    </div>

                    <div class="form-group form-group-default" id="passwordGroup">
                        <label>{{ __('voyager::generic.password') }}</label>
                        <div class="controls">
                            <input type="password" name="password" placeholder="{{ __('voyager::generic.password') }}" class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group" id="rememberMeGroup">
                        <div class="controls">
                        <input type="checkbox" name="remember" value="1"><span class="remember-me-text">{{ __('voyager::generic.remember_me') }}</span>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-block login-button">
                        <span class="signingin hidden"><span class="voyager-refresh"></span> {{ __('voyager::login.loggingin') }}...</span>
                        <span class="signin">{{ __('voyager::generic.login') }}</span>
                    </button>

              </form>

              <div style="clear:both"></div>

              @if(!$errors->isEmpty())
              <div class="alert alert-red">
                <ul class="list-unstyled">
                    @foreach($errors->all() as $err)
                    <li>{{ $err }}</li>
                    @endforeach
                </ul>
              </div>
              @endif

            </div> <!-- .login-container -->

        </div> <!-- .login-sidebar -->
        <div class="Aligner-item-bottom col-sx-12" style="padding-left:30px;">
                        <p>{{ Voyager::setting('admin.description', __('voyager::login.welcome')) }}</p>
        </div>
    </div> <!-- .row -->
</div> <!-- .container-fluid -->
<script>
    var btn = document.querySelector('button[type="submit"]');
    var form = document.forms[0];
    var email = document.querySelector('[name="email"]');
    var password = document.querySelector('[name="password"]');
    btn.addEventListener('click', function(ev){
        if (form.checkValidity()) {
            btn.querySelector('.signingin').className = 'signingin';
            btn.querySelector('.signin').className = 'signin hidden';
        } else {
            ev.preventDefault();
        }
    });
    email.focus();
    document.getElementById('emailGroup').classList.add("focused");

    // Focus events for email and password fields
    email.addEventListener('focusin', function(e){
        document.getElementById('emailGroup').classList.add("focused");
    });
    email.addEventListener('focusout', function(e){
       document.getElementById('emailGroup').classList.remove("focused");
    });

    password.addEventListener('focusin', function(e){
        document.getElementById('passwordGroup').classList.add("focused");
    });
    password.addEventListener('focusout', function(e){
       document.getElementById('passwordGroup').classList.remove("focused");
    });

</script>
</body>
</html>
