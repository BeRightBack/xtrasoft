{* templates/index.tpl *}
<!DOCTYPE html>
<html>
<head>
    <title>Smarty with Bootstrap</title>
    <!-- Bootstrap CSS -->
    <link href="{$base_url}/vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons CSS -->
    <link href="{$base_url}/vendor/twbs/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Hello, {$name}!</h1>
        <p class="lead">This is a simple example of using Bootstrap with Smarty templates.</p>
        <!-- Example Button with Icon -->
        <button class="btn btn-primary">
            <i class="bi bi-hand-thumbs-up"></i> Like
        </button>
        <!-- Example Card -->
        <div class="card mt-4">
            <div class="card-body">
                <h5 class="card-title">Card Title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="{$base_url}/vendor/components/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS (includes Popper.js) -->
    <script src="{$base_url}/vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>