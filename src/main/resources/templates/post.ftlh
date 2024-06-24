[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/styleCss.css">
    <title>Detail Příspěvku</title>
</head>
<body>
<h1>Detail Příspěvku</h1>
[#list posts as post]
    <h1>${post.title}</h1>
    <p><strong>Autor:</strong> ${post.author}</p>
    <p><strong>Datum publikování:</strong> ${post.published}</p>
    <p>${post.body}</p>
[/#list]
<a href="/">Zpět na titulní stránku</a>
</body>
</html>




