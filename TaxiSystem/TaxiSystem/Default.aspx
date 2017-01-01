<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TaxiSystem.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Start
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-size: 62.5%;
            font-family: "Arial", Helvetica, sans-serif;
        }

        .jumbotron {
            background-color: white;
            color: black;
        }

        #websiteTitle {
            font-size: 6em;
            vertical-align: middle;
            font-family: "Arial", Helvetica, sans-serif;
            color: black;
        }

        #websiteSlogan {
            font-size: 4em;
        }
        /* Carousel Styling */
        .slide1 {
            background-image: url('Images/receptionist.jpg');
            height: 600px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .slide2 {
            background-image: url('Images/taxi1.jpg');
            height: 600px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .slide3 {
            background-image: url('Images/bogholderi.jpg');
            height: 600px;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .carousel-caption h1 {
            font-size: 7em;
            font-family: "Arial", Helvetica, sans-serif;
            padding-bottom: .4em;
        }

        .carousel-caption p {
            font-size: 4em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">
        <div class="jumbotron">
            <span id="websiteTitle">Enkelt og nemt</span>
            <p id="websiteSlogan">Vi har IT-løsningen til din vognmandsforretning</p>
        </div>
    </div>
    <div class="container">
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
                        <h1>Ingen startomkostninger og lave priser</h1>
                        <p>Kontakt os for at høre om dine muligheder</p>
                        <p><a href="Contact.aspx" class="btn btn-primary btn-lg">Kontakt</a></p>
                    </div>
                </div>
                <div class="item">
                    <div class="slide2"></div>
                    <div class="carousel-caption">
                        <h1>En eller flere taxier?</h1>
                        <p>Vi har løsningen til alle behov</p>
                    </div>
                </div>
                <div class="item">
                    <div class="slide3"></div>
                    <div class="carousel-caption">
                        <h1>Træt af at rode med tal?</h1>
                        <p>Få overblik og gør dit regnskab lettere</p>
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
    </div>

</asp:Content>
