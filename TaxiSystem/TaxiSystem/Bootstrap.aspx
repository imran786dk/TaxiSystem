<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bootstrap.aspx.cs" Inherits="TaxiSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- If IE use the latest rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Set the page to the width of the device and set the zoon level -->
    <meta name="viewport" content="width = device-width, initial-scale = 1" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <title>Bootstrap Tutorial</title>

    <style>
        .jumbotron {
            background-color: #2e2d88;
            color: white;
        }
        /* Adds borders for tabs*/
        .tab-content {
            border-left: 1px solid #ddd;
            border-right: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            padding: 10px;
        }

        .nav-tab {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- CONTAINERS -->
            <!-- container puts padding around itself while container-fluid fills the whole screen. Bootstap grids require a container. -->
            <div class="container">
                <!-- page-header adds space aroundtext and enlarges it. It also adds an underline at the end -->
                <div class="page-header">
                    <h1>Bootstrap Tutorial</h1>
                </div>
                <!-- jumbotron enlarges fonts and puts everything in a gray box with rounded corners. If jumbotron is outside a container 
                it fills the total width. You can change the styles by placing the changes after the Bootstrap CDN link -->
                <div class="jumbotron">
                    <p>
                        Bootstrap is downloadable in two forms, within which you'll find the following directories 
                       and files, logically grouping common resources and providing both compiled and minified variations.
                    </p>
                    <!-- BUTTONS -->
                    <!-- There are many built in button colors and sizes. If a link is to trigger in page functionality it should use role="button". 
                    The button element should be used in most situations -->
                    <p>
                        <a href="#" class="btn btn-default btn-lg" role="button">More Info</a>
                        <button type="submit" class="btn btn-danger" role="button">Button</button>
                        <input type="button" value="Info" class="btn btn-info" />
                        <button type="submit" class="btn-primary btn-sm">Primary</button>
                        <button type="submit" class="btn btn-success btn-xs">Success</button>
                        <button type="submit" class="btn btn-warning btn-lg">Warning</button>
                        <button type="submit" class="btn btn-link btn-lg">Link</button>
                        <!-- You can disable buttons with disabled -->
                        <button type="button" class="btn btn-primary btn-lg" disabled="disabled">Disabled</button>
                        <!-- You disable links in a similar way -->
                        <a href="#" class="btn btn-default btn-lg disabled" role="button">Disbaled</a>

                    </p>
                    <!-- You can group buttons. You can size the buttons with btn-group-lg, btn-group-sm, or btn-group-xs -->
                    <div class="btn-group btn-group-lg" role="group">
                        <button type="button" class="btn btn-default">One</button>
                        <button type="button" class="btn btn-default">Two</button>
                        <button type="button" class="btn btn-default">Three</button>
                    </div>
                </div>



            </div>

            <div class="container">
                <!-- col means column, md >=992px (Also use xs, sm and lg), and the 3 represents the size of the column
                3 * 4 = 12 (A 6 column layout would use 2 if they had equal size) -->
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <h4>Column1</h4>
                        Bootlint is the official Bootstrap HTML linter tool. It automatically checks for several 
                        common HTML mistakes in webpages that are using Bootstrap in a fairly "vanilla" way. 
                        Vanilla Bootstrap's components/widgets require their parts of the DOM to conform to certain 
                        structures. Bootlint checks that instances of Bootstrap components have correctly-structured HTML. 
                        Consider adding Bootlint to your Bootstrap web development toolchain so that none of the common 
                        mistakes slow down your project's development.
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <h4>Column2</h4>
                        Specifically, we support the latest versions of the following browsers and platforms.
                        Alternative browsers which use the latest version of WebKit, Blink, or Gecko, whether 
                        directly or via the platform's web view API, are not explicitly supported. However, 
                        Bootstrap should (in most cases) display and function correctly in these browsers as well. 
                        More specific support information is provided below.
                    </div>
                    <!-- When in sm mode the 3rd column jumps up below the 2nd column. To fix it put the following right before 
                    the column that messes up using the screen mode being sm that messes up. -->
                    <div class="clearfix visible-sm"></div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <h4>Column3</h4>
                        For Firefox, in addition to the latest normal stable release, we also support the latest 
                        Extended Support Release (ESR) version of Firefox. Unofficially, Bootstrap should look 
                        and behave well enough in Chromium and Chrome for Linux, Firefox for Linux, and Internet 
                        Explorer 7, as well as Microsoft Edge, though they are not officially supported.
                        For a list of some of the browser bugs that Bootstrap has to grapple with, see our Wall 
                        of browser bugs.
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <h4>Column4</h4>
                        IE8 has some issues with @font-face when combined with :before. Bootstrap uses that combination 
                        with its Glyphicons. If a page is cached, and loaded without the mouse over the window (i.e. hit 
                        the refresh button or load something in an iframe) then the page gets rendered before the font loads. 
                        Hovering over the page (body) will show some of the icons and hovering over the remaining icons will 
                        show those as well. See issue #13863 for details.
                    </div>
                </div>
            </div>
            <!-- For different sized columns divide up the 12 -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                        <!-- We can collapse or hide data on the screen -->
                        <h4><a href="#col1Content" data-toggle="collapse">Column1</a></h4>
                        <!-- With collapse in this div shows on load -->
                        <div id="col1Content" class="collapse in">
                            Bootlint is the official Bootstrap HTML linter tool. It automatically checks for several 
                        common HTML mistakes in webpages that are using Bootstrap in a fairly "vanilla" way. 
                        Vanilla Bootstrap's components/widgets require their parts of the DOM to conform to certain 
                        structures. Bootlint checks that instances of Bootstrap components have correctly-structured HTML. 
                        Consider adding Bootlint to your Bootstrap web development toolchain so that none of the common 
                        mistakes slow down your project's development.
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                        <h4><a href="#col2Content" data-toggle="collapse">Column2</a></h4>
                        <!-- With class collapse this div won't show on load -->
                        <div id="col2Content" class="collapse">
                            Specifically, we support the latest versions of the following browsers and platforms.
                        Alternative browsers which use the latest version of WebKit, Blink, or Gecko, whether 
                        directly or via the platform's web view API, are not explicitly supported. However, 
                        Bootstrap should (in most cases) display and function correctly in these browsers as well. 
                        More specific support information is provided below.
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h4><a href="#col3Content" data-toggle="collapse">Column3</a></h4>
                        <div id="col3Content" class="collapse">
                            For Firefox, in addition to the latest normal stable release, we also support the latest 
                        Extended Support Release (ESR) version of Firefox. Unofficially, Bootstrap should look 
                        and behave well enough in Chromium and Chrome for Linux, Firefox for Linux, and Internet 
                        Explorer 7, as well as Microsoft Edge, though they are not officially supported.
                        For a list of some of the browser bugs that Bootstrap has to grapple with, see our Wall 
                        of browser bugs.
                        </div>
                    </div>
                </div>

            </div>
            <!-- Show / Hide elements based on screen size -->
            <div class="container">
                <div class="well hidden-sm hidden-md hidden-lg">
                    <p>Screen &lt; 768px</p>
                </div>
                <div class="well hidden-md hidden-lg">
                    <p>Screen &gt;= 768px and &lt; 992px</p>
                </div>
                <div class="well hidden-lg">
                    <p>Screen &gt;= 992px and &lt; 1200px</p>
                </div>
                <div class="well">
                    <p>Screen &gt 1200px</p>
                </div>
            </div>

            <div class="container">
                <!-- You can constrain the columns if you want -->
                <div class="row">
                    <!-- We could move it to the right with a blank div
                    <div class="col-md-6"></div> -->
                    <!-- Or we could use offset -->
                    <div class="col-md-6 col-md-offset-6">
                        <!-- The table class adds nice spacing and the other classes add additional style -->
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <td colspan="4">Best Baseball Players</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                    <!-- You can adjust the width of table columns as well -->
                                    <th class="col-md-2"></td>
 
                                        <!-- Use text alignment like text-center or text-right -->
                                        <th class="text-center">Average</td>
                                        <th class="text-center">RBIs</td>
                                        <th class="text-center">Homeruns</td>
                                </tr>
                                <tr>
                                    <td><a href="#">Hank Aaron*</a></td>
                                    <td>.305</td>
                                    <td>2297</td>
                                    <td>755</td>
                                </tr>
                                <tr>
                                    <td><a href="#">Babe Ruth*</a></td>
                                    <td>.342</td>
                                    <td>2214</td>
                                    <td>714</td>
                                </tr>
                                <tr>
                                    <td><a href="#">Barry Bonds</a></td>
                                    <td>.298</td>
                                    <td>1996</td>
                                    <td>762</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</html>

