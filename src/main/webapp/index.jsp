<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/2820dabbcb.js" crossorigin="anonymous"></script>
        <title>Welcome to Online Banking</title>
        <style>
            body{
                background-color: grey;
                font-family: verdana;
                font-size: 12px;
            }
            .imgslider{
                width: 50%;
                height: 200px;
                position: absolute;
                left: 50%;
                transform: translate(-50%);
                background-image: url('bank1.jpg');
                background-size: 100% 100%;
                box-shadow: 1px 2px 10px 5px white;
                animation:slider 11s infinite linear;
            }            
            @keyframes slider{
                0%{
                    background-image: url('bank1.jpg');
                }
                35%{
                    background-image: url('bank2.jpg');
                }
                75%{
                    background-image: url('bank3.jpg');
                }
            }
            .wrap{
                width: 1000px;
                margin: auto;
                margin-top: 230px;
                align-items: center;
            }
            .card{
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.6);
                transition: 0.4s;
                width: 300px;
                height: 100px;
                background: #fff;
                text-align: center;
                font-size: 16px;
                float: right;
                margin: 10px;
                padding: 25px;
            }
              footer{
                position: fixed;
                bottom: 0px;
                width: 100%;
                background: darkslategrey;
                color: white;
              }
              .main-content{
                display: flex;
              }
              .main-content .box{
                flex-basis: 50%;
                padding: 10px 20px;
              }
              .box h2{
                font-size: 1.125rem;
                font-weight: 600;
                text-transform: uppercase;
              }
              .box .content{
                margin: 20px 0 0 0;
                position: relative;
              }
              .box .content:before{
                position: absolute;
                content: '';
                top: -10px;
                height: 2px;
                width: 100%;
                background: #1a1a1a;
              }
              .box .content:after{
                position: absolute;
                content: '';
                height: 2px;
                width: 15%;
                background: #f12020;
                top: -10px;
              }
              .left .content p{
                text-align: justify;
              }
              .left .content .social{
                margin: 20px 0 0 0;
              }
              .left .content .social a{
                padding: 0 2px;
              }
              .left .content .social a span{
                height: 40px;
                width: 40px;
                background: #1a1a1a;
                line-height: 40px;
                text-align: center;
                font-size: 18px;
                border-radius: 5px;
                transition: 0.3s;
              }
              .left .content .social a span:hover{
                background: #f12020;
              }
              .center .content .fas{
                font-size: 1.4375rem;
                background: #1a1a1a;
                height: 45px;
                width: 45px;
                line-height: 45px;
                text-align: center;
                border-radius: 50%;
                transition: 0.3s;
                cursor: pointer;
              }
              .center .content .fas:hover{
                background: #f12020;
              }
              .center .content .text{
                font-size: 1.0625rem;
                font-weight: 500;
                padding-left: 10px;
              }
              .center .content .phone{
                margin: 15px 0;
              }
              .right form .text{
                font-size: 1.0625rem;
                margin-bottom: 2px;
                color: #656565;
              }
              .right form .msg{
                margin-top: 10px;
              }
              .right form input, .right form textarea{
                width: 100%;
                font-size: 1.0625rem;
                background: #151515;
                padding-left: 10px;
                border: 1px solid #222222;
              }
              .right form input:focus,
              .right form textarea:focus{
                outline-color: #3498db;
              }
              .right form input{
                height: 35px;
              }
              .right form .btn{
                margin-top: 10px;
              }
              .right form .btn button{
                height: 40px;
                width: 100%;
                border: none;
                outline: none;
                background: #f12020;
                font-size: 1.0625rem;
                font-weight: 500;
                cursor: pointer;
                transition: .3s;
              }
              .right form .btn button:hover{
                background: #000;
              }
              .bottom center{
                padding: 5px;
                font-size: 0.9375rem;
                background: #151515;
              }
              .bottom center span{
                color: #656565;
              }
              .bottom center a{
                color: #f12020;
                text-decoration: none;
              }
              .bottom center a:hover{
                text-decoration: underline;
              }
              @media screen and (max-width: 900px) {
                footer{
                  position: relative;
                  bottom: 0px;
                }
                .main-content{
                  flex-wrap: wrap;
                  flex-direction: column;
                }
                .main-content .box{
                  margin: 5px 0;
                }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="imgslider"></div>
        <div class="wrap">
            <div class="card" style=" float: left;">
                <i class="fas fa-users"></i>
                <h4><b><a href="ListCustomer"> View Customers</a></b></h4>
            </div>
            <div class="card">
                <i class="fas fa-file-invoice"></i>
                <h4><b><a href="ListTransaction"> View All Transactions</a></b></h4>
            </div>
        </div>
        <footer>
            <div class="main-content">
              <div class="left box">
                <h2>About us</h2>
                <div class="content">
                  <p>Banks play an important role in financial stability and the economy of a country, most jurisdictions exercise a high degree of regulation over banks. Most countries have institutionalized a system known as fractional reserve banking, under which banks hold liquid assets equal to only a portion of their current liabilities. In addition to other regulations intended to ensure liquidity, banks are generally subject to minimum capital requirements based on an international set of capital standards, the Basel Accords.</p>
                  <div class="social">
                    <a href="https://facebook.com/"><span class="fab fa-facebook-f"></span></a>
                    <a href="https://twitter.com/"><span class="fab fa-twitter"></span></a>
                    <a href="https://instagram.com/"><span class="fab fa-instagram"></span></a>
                    <a href="https://youtube.com/"><span class="fab fa-youtube"></span></a>
                  </div>
                </div>
              </div>

              <div class="center box">
                <h2>Address</h2>
                <div class="content">
                  <div class="place">
                    <span class="fas fa-map-marker-alt"></span>
                    <span class="text">Noida, Uttar Pradesh</span>
                  </div>
                  <div class="phone">
                    <span class="fas fa-phone-alt"></span>
                    <span class="text">+089-765432100</span>
                  </div>
                  <div class="email">
                    <span class="fas fa-envelope"></span>
                    <span class="text">abc@example.com</span>
                  </div>
                </div>
              </div>

              <div class="right box">
                <h2>Contact us</h2>
                <div class="content">
                  <form action="#">
                    <div class="email">
                      <div class="text">Email *</div>
                      <input type="email" required>
                    </div>
                    <div class="msg">
                      <div class="text">Message *</div>
                    </div>
                    <div class="btn">
                      <button type="submit">Send</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="bottom">
              <center>
                <span class="credit">Created By <a href="index.jsp">Rajat Tripathi</a> | </span>
                <span class="far fa-copyright"></span><span> 2021 All rights reserved.</span>
              </center>
            </div>
          </footer>
    </body>
</html>
