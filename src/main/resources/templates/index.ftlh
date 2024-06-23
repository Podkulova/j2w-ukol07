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

[#list posts as post]
<table>
    <thead>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Perex</th>
        <th>Body</th>
        <th>Published</th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>${post.title}</a></td>
        <td>${post.author}</td>
        <td>${post.perex}</td>
        <td>${post.body}</td>
        <td>${post.published}</td>
        <td><a href="/post/${post.slug}">Přečíst</a></td>
    </tr>

    </tbody>
</table>
[/#list]
</body>
</html>

