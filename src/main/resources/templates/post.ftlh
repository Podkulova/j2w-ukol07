[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">

    <title>${post.title}</title>
</head>
<body>
[#list post as post]
<h1>${post.title}</h1>
<p><strong>Autor:</strong> ${post.author}</p>
<p><strong>Datum publikování:</strong> ${post.published}</p>
<p>${post.body}</p>
<a href="/">Zpět na titulní stránku</a>
[/#list]
</body>
</html>