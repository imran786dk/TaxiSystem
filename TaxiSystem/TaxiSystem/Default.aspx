<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TaxiSystem.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home - TaxiSystem
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
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
            background-image: url('Images/taxi1.jpg');
            height: 500px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .slide3 {
            background-image: url('Images/bogholderi.jpg');
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

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
                    <h1>Online system</h1>
                    <p>Udviklet i samarbejde med</p>
                    <p><a href="#" class="btn btn-primary btn-sm">Bestil nu</a></p>
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

</asp:Content>
