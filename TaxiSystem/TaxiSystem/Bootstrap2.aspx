<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bootstrap2.aspx.cs" Inherits="TaxiSystem.Bootstrap2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- If IE use the latest rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Set the page to the width of the device and set the zoon level -->
    <meta name="viewport" content="width = device-width, initial-scale = 1" />
    <title>Bootstrap Tutorial</title>
    <!-- Use downloaded version of Bootstrap. You can style everything here to your liking. -->
    <link rel="stylesheet" type="text/css" href="Styles/css/bootstrap.css" />
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            font-size: 62.5%;
            font-family: arial, sans-serif;
        }

        .jumbotron {
            background-color: darkgray;
            color: black;
        }

        #nttLogo {
            height: 100px;
            width: 200px;
        }

        #websiteTitle {
            font-size: 10em;
            vertical-align: middle;
            font-family: 'Pacifico', cursive;
            padding-left: 15px;
            color: #191970;
        }

        #websiteSlogan {
            font-size: 5.4em;
        }
        /* Carousel Styling */
        .slide1 {
            background-image: url('Images/background1.jpg');
            height: 500px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .slide2 {
            background-image: url('Images/background2.png');
            height: 500px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .slide3 {
            background-image: url('Images/background3.jpg');
            height: 500px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .carousel-caption h1 {
            font-size: 5.4em;
            font-family: 'Pacifico', cursive;
            padding-bottom: .4em;
        }

        .carousel-caption p {
            font-size: 2em;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="jumbotron">
                    <img src="Images/TaxiSystem.png" id="nttLogo" alt="New Think Tank Logo" />
                    <span id="websiteTitle">New Think Tank</span>
                    <p id="websiteSlogan">Video Tutorials on just about Anything</p>
                </div>
            </div>
            <!-- Carousel -->
            <!-- Surround everything with a div with the class carousel slide -->
            <div id="theCarousel" class="carousel slide" data-ride="carousel">

                <ol class="carousel-indicators">
                    <li data-target="#theCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#theCarousel" data-slide-to="1"></li>
                    <li data-target="#theCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Define the text to place over the image -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="slide1"></div>
                        <div class="carousel-caption">
                            <h1>Amazing Backgrounds</h1>
                            <p>Thousands of Backgrounds for Free</p>
                            <p><a href="#" class="btn btn-primary btn-sm">Get them Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="slide2"></div>
                        <div class="carousel-caption">
                            <h1>Thousands of Colors</h1>
                            <p>Every Color you can Imagine</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="slide3"></div>
                        <div class="carousel-caption">
                            <h1>Amazing Illustrations</h1>
                            <p>And they are All Free</p>
                        </div>
                    </div>
                </div>
                <br />
                <!-- Set the actions to take when the arrows are clicked -->
                <a class="left carousel-control" href="#theCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#theCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>

            <!-- ICONS -->
            <!-- Bootstrap has hundreds of free icons. http://getbootstrap.com/components/#glyphicons 
            They can be used on their own or inside of buttons with a link or regular button for example. -->
            <div class="container">
                <div class="jumbotron">
                    <p>
                        <span class="glyphicon glyphicon-film"></span>

                        <a href="#" class="btn btn-primary btn-lg">Trash <span class="glyphicon glyphicon-trash"></span></a>

                        <button type="button" class="btn btn-default btn-lg">

                            <!-- aria-hidden hides decorative icons from screen readers -->
                            <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>Call Me
                        </button>
                    </p>

                </div>
            </div>

            <div class="container">

                <!-- well surrounds the text with a rounded border and gray background. The size can be changed with well-sm or well-lg -->
                <div class="well well-sm">
                    <p>
                        Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
                       velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
                       tempor incididunt.
                    </p>
                </div>

                <p>
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit 
                   amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
                   quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>

            <div class="container">

                <!-- ROUNDED IMAGES -->
                <!-- Images marked as responsive have a max-width equal to the screen. You can add rounded corners with img-rounded, 
                img-circle, and img-thumbnail. pull-left and pull-right will float images in the provided direction. center-block will 
                place the image in the center. -->
                <img src="Images/image1.jpg" id="nttLogo1" class="img-responsive img-circle pull-left" alt="Responsive image" />
            </div>

            <!-- CONTEXTUAL COLORS -->
            <!-- Contextual colors can be added to text -->
            <div class="container">
                <p>
                    <span class="text-muted">Quis nostrud</span>
                    <span class="text-primary">exercitation ullamco</span>
                    <span class="text-success">laboris nisi</span>
                    <span class="text-info">ut aliquip</span>
                    <span class="text-warning">ex ea commodo</span>
                    <span class="text-danger">consequat.</span> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                </p>
            </div>

            <!-- You can set contextual backgrounds -->
            <div class="container">
                <span class="bg-primary">Duis aute irure dolor</span>
                <span class="bg-success">In reprehenderit</span>
                <span class="bg-info">In voluptate velit</span>
                <span class="bg-warning">Esse cillum dolore eu</span>
                <span class="bg-danger">Fugiat nulla pariatur</span>
            </div>
            <br />
            <div class="container">

                <!-- DROP DOWN MENUS -->
                <!-- You can easily add a drop down menu with class dropdown, or dropup. Change button size with btn-lg, btn-sm, btn-xs
                ARIA stands for Accessible Rich Internet Applications and it is used to make apps more excessible for people with disabilities. 
                aria-haspopup states that the element has a sub menu. aria-expanded defines if the sub-menu is expanded. 
                Full list here http://www.w3.org/TR/wai-aria/states_and_properties#aria-expanded -->
                <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        Favorite Hero
 
                    <!-- Display icon in button -->
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">

                        <!-- Unselectable header -->
                        <li class="dropdown-header">Marvel</li>
                        <li><a href="#">Spiderman</a></li>
                        <li><a href="#">Captain America</a></li>
                        <li><a href="#">Iron Man</a></li>

                        <!-- Seperates content in menu -->
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">DC</li>

                        <!-- Disable menu element -->
                        <li class="disabled"><a href="#">Superman</a></li>
                        <li><a href="#">Batman</a></li>
                        <li><a href="#">Flash</a></li>
                    </ul>
                </div>
            </div>
            <br />
            <!-- INPUT GROUPS -->
            <div class="container">

                <!-- We can add text or buttons on the right and/or left of input elements. Use input-group-lg or input-group-sm for input sizing -->
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">Your name</span>
                    <input type="text" class="form-control" placeholder="Full Name" />
                </div>
                <br />

                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" placeholder="Full Name" />
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Enter</button>
                    </span>
                </div>
                <br />

                <!-- Create input button dropdowns. aria-haspopup states that input has a sub menu. aria-expanded closes the dropdown by default -->
                <div class="row">
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">User ID <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Google+</a></li>
                            </ul>
                        </div>
                        <input type="text" class="form-control" aria-label="..." />
                    </div>
                </div>
                <br />

                <!-- Input radio and checkboxes -->
                <div class="row">
                    <div class="input-group">
                        <span class="input-group-addon">

                            <!-- Change to radio for radio -->
                            <input type="checkbox" />
                        </span>
                        <input type="text" class="form-control" />
                    </div>
                </div>

            </div>
            <br />
            <!-- NAVIGATION ELEMENTS -->
            <div class="container">

                <!-- Basic horizontal menu -->
                <ul class="list-inline">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>

                    <!-- Add a dropdown menu -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Phone</a></li>
                            <li><a href="#">Email</a></li>
                            <li><a href="#">Achedule Appointment</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Shop</a></li>
                </ul>

                <!-- Basic vertical menu -->
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>

                    <!-- Add drop down menu -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Phone</a></li>
                            <li><a href="#">Email</a></li>
                            <li><a href="#">Schedule Appointment</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Shop</a></li>
                </ul>

                <!-- Use nav-pills, nav-tabs. To center tabs add nav-justified to the class for ul -->
                <ul class="nav nav-pills">
                    <li class="active"><a data-toggle="tab" href="#superman">Superman</a></li>
                    <li><a data-toggle="tab" href="#batman">Batman</a></li>

                    <!-- Dropdown menu item -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Flash
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">

                            <!-- Disable a tab -->
                            <li class="disabled"><a data-toggle="tab" href="#flash">The Flash</a></li>
                            <li><a data-toggle="tab" href="#kidflash">Kid Flash</a></li>
                        </ul>
                    </li>
                </ul>

                <div class="tab-content">
                    <div id="superman" class="tab-pane fade in active">
                        <p>Superman is a fictional superhero appearing in American comic books published by DC Comics. </p>
                    </div>
                    <div id="batman" class="tab-pane fade">
                        <p>Batman is a fictional superhero appearing in American comic books published by DC Comics. </p>
                    </div>
                    <div id="flash" class="tab-pane fade">
                        <p>The Flash is a fictional superhero appearing in American comic books published by DC Comics. </p>
                    </div>
                    <div id="kidflash" class="tab-pane fade">
                        <p>Kid Flash is a fictional superhero appearing in American comic books published by DC Comics. </p>
                    </div>
                </div>

            </div>
            <br />
            <!-- Pagination -->
            <div class="container">
                <nav>
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <br />
            <!-- Thumbnails -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <div class="thumbnail">
                            <img src="Images/image1.jpg" alt="..." />
                            <div class="caption">
                                <h3>Hamburger</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <div class="thumbnail">
                            <img src="Images/background1.jpg" alt="..." />
                            <div class="caption">
                                <h3>Polenta</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <div class="thumbnail">
                            <img src="Images/background2.png" alt="..." />
                            <div class="caption">
                                <h3>Meatball Sub</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <div class="thumbnail">
                            <img src="Images/background3.jpg" alt="..." />
                            <div class="caption">
                                <h3>Eggplant</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add to Cart</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <!-- Progress bar -->
            <!-- Provide progress feedback to users by changing the value of style for the progress-bar (Doesn't work on IE9 or below) progress-bar-striped is optional -->
            <div class="container">
                <div class="progress">
                    <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                        <span class="sr-only">40% Complete</span>
                    </div>
                </div>
            </div>
            <br />

            <!-- Media object -->
            <div class="container">
                <div class="media">

                    <!-- You can use media-top, media-middle, or media-bottom -->
                    <div class="media-left media-top">
                        <a href="#">
                            <img class="media-object" src="Images/image1.jpg" alt="..." />
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Awesome Veggie Burger</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, 
                           consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                           exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor...</p>
                    </div>
                </div>

                <div class="media">
                    <div class="media-left media-top">
                        <a href="#">
                            <img class="media-object" src="Images/image1.jpg" alt="..." />
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Best Polenta Recipe</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, 
                           consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                           exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor...</p>
                    </div>
                </div>
            </div>
            <br />

            <!-- Media List -->

            <div class="container">
                <h3>What did you Eat for Lunch?</h3>

                <div class="media">
                    <!-- class media , to create media element-->
                    <a class="pull-left" href="#">
                        <img class="media-object" src="Images/image1.jpg" alt="..." />
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">A Ate a Veggie Burger</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor...</p>
                    </div>
                </div>

                <div class="media">
                    <!-- class media , to create media element  -->
                    <a class="pull-left" href="#">
                        <img class="media-object" src="Images/image1.jpg" alt="..." />
                        <!-- media-object 2 -->
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Eggplant Parmesan</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor...</p>

                        <!-- Nested Media : Was placed before the closing media-body div element -->
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="Images/image1.jpg" alt="..." />
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">My Veggie Meatball Sub was Awesome</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor...</p>
                            </div>
                        </div>
                    </div>
                    <!-- media-body for Eggplant closes here -->
                </div>
            </div>
            <br />
            <!-- List Groups -->
            <div class="container">
                <ul class="list-group">

                    <!-- Disable elements -->
                    <li class="list-group-item disabled">Verizon Email</li>
                    <li class="list-group-item">

                        <!-- You can add badges -->
                        <span class="badge">123</span>Gmail</li>
                    <li class="list-group-item">Sent</li>

                    <!-- You can style elements like warning, success, info, danger-->
                    <li class="list-group-item list-group-item-warning">Junk</li>
                </ul>

                <!-- Add lists of links -->
                <a href="#" class="list-group-item">Add Account</a>

                <!-- Add any html elements in list -->
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">Delete Account</h4>
                    <p class="list-group-item-text">The account will be permanently deleted</p>
                </a>

                <!-- You can put buttons in the list -->
                <button type="button" class="list-group-item">Check for Mail</button>

            </div>

        </div>
    </form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Use downloaded version of Bootstrap -->
<script src="Styles/js/bootstrap.min.js"></script>
</html>
