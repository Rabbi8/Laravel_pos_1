
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Mini Pos </title>

  <!-- Custom fonts for this template-->
  <link href="{{ asset('assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  
  {{-- sweetalert2 --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.7.3/sweetalert2.css">
 
  <!-- Custom styles for this template-->
  <link href="{{ asset('assets/css/sb-admin-2.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">

  <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">

</head>

<body id="page-top" class="sidebar-toggled">


	@yield('page_body')


  <!-- Bootstrap core JavaScript-->
  <script src="{{ asset('assets/vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

  <!-- Core plugin JavaScript-->
  <script src="{{ asset('assets/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

  <!-- Custom scripts for all pages-->
  <script src="{{ asset('assets/js/sb-admin-2.min.js') }}"></script>

  <!-- Page level plugins -->
  <script src="{{ asset('assets/vendor/datatables/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

  <!-- Page level custom scripts -->
  <script src="{{ asset('assets/js/demo/datatables-demo.js') }}"></script>

  {{--  sweetalert2 --}}
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
  $(document).on('click', '#logout', function(e){
    e.preventDefault();
    let link = $(this).attr('href');
      Swal.fire({
      title: 'Info',
      text: 'Do you want to continue?',
      icon: 'info',
      confirmButtonText: 'confirm',
      confirmButtonColor:'#FE6244' ,
      showDenyButton: true,
      cancelButtonColor: '#7AA874',
      }).then((result)=> {
        if(result.isConfirmed){
          window.location.href = link;
        } else if(result.isDenied){
          // anything
        }
      });
  });
</script>


{{-- toastr  --}}
<script>
  @if(session()->has('message'))
        const Toast = Swal.mixin({
        toast: true,
        position: 'top-right',
        iconColor: 'white',
        customClass: {
        popup: 'colored-toast'
        },
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true
        })
         Toast.fire({
        icon: '{{ session()->get('notification_type') }}',
        title: '{{ session()->get('message') }}'
        });
        
        @php
          Session::forget('message');
        @endphp
        
  @endif
</script>

{{-- Login form fill up  --}}
<script>
  $(document).on('click','#login_input_fill_up', function(e){
    e.preventDefault();
    $('#login_form_email').val('rabbi@gmail.com');
    $('#login_form_password').val('12345678');
  });
</script>

</body>

</html>
