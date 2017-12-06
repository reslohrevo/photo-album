#!/bin/sh
#
# Create detail view template.

wipdir=${0%%mgallerycss.sh}

cat <<CSS
body {
    /*
    padding: 0;
    margin: 0;
    background: #EEE;
    font: 12px/15px 'Lucida Sans',sans-serif;
    */
}
.wrap {
    overflow: hidden;
    margin: 0px;
}
.box {
    float: left;
    position: relative;
    width: 20%;
    padding-bottom: 20%;
}
.boxInner {
    position: absolute;
    left: 10px;
    right: 10px;
    top: 10px;
    bottom: 10px;
    overflow: hidden;
}
.boxInner img {
    height: 100%;
}
.boxInner .titleBox {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    margin-bottom: -50px;
    background: #000;
    background: rgba(0, 0, 0, 0.5);
    color: #FFF;
    padding: 10px;
    text-align: center;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
}
body.no-touch .boxInner:hover .titleBox,
body.touch .boxInner.touchFocus .titleBox {
    margin-bottom: 0;
}
@media only screen and (max-width : 480px) {
    /* Smartphone view: 1 tile */
    .box {
        width: 100%;
        padding-bottom: 100%;
    }
}
@media only screen and (max-width : 650px) and (min-width : 481px) {
    /* Tablet view: 2 tiles */
    .box {
        width: 50%;
        padding-bottom: 50%;
    }
}
@media only screen and (max-width : 1050px) and (min-width : 651px) {
    /* Small desktop / ipad view: 3 tiles */
    .box {
        width: 33.3%;
        padding-bottom: 33.3%;
    }
}
@media only screen and (max-width : 1290px) and (min-width : 1051px) {
    /* Medium desktop: 4 tiles */
    .box {
        width: 25%;
        padding-bottom: 25%;
    }
}
CSS