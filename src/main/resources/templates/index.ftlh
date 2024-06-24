[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog - Úvodní stránka</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<h1>Můj blog</h1>
<table>
    <thead>
    <tr>
        <th>Titulek</th>
        <th>Autor</th>
        <th>Perex</th>
        <th>Tělo</th>
        <th>Publikováno</th>
    </tr>
    </thead>
    <tbody>
    [#list posts as post]
    <tr>
        <td>${post.title}</td>
        <td>${post.author}</td>
        <td>${post.perex}</td>
        <td>${post.body}</td>
        <td>${post.published}</td>
        <td><a href="/post/${post.id}">Přečíst</a></td>
    </tr>
    [/#list]
    </tbody>
</table>

</body>
</html>

