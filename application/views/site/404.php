<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title><?=$fail;?></title>
  <style>
    ::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
    ::selection { background: #fe57a1; color: #fff; text-shadow: none; }
    html {
        padding: 30px 10px;
        font-size: 20px;
        line-height: 1.4;
        color: #737373;
        background: #f0f0f0;
        -webkit-text-size-adjust: 100%;
        -ms-text-size-adjust: 100%;
    }
    html, input { font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; }
    body {
        max-width: 500px;
        width: 500px;
        padding: 30px 20px 50px;
        border: 1px solid #b3b3b3;
        border-radius: 4px;
        margin: 0 auto;
        box-shadow: 0 1px 10px #a7a7a7, inset 0 1px 0 #fff;
        background: #fcfcfc;
    }
    h1 { margin: 0 10px; font-size: 42px; text-align: center; }
    h1 span { color: #bbb; }
    h3 { margin: 1.5em 0 0.5em; }
    p { margin: 1em 0; }
    ul { padding: 0 0 0 40px; margin: 1em 0; }
    .container { max-width: 380px; _width: 380px; margin: 0 auto; }
  </style>
</head>
<body>
  <div class="container">
    <p><?=$fail;?></p>
  </div>
</body>
</html>