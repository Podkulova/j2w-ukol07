[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog - Úvodní stránka</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<h1>Seznam příspěvků</h1>
<ul>
    [#list posts as post]
        <li>
            <a href="/post/${post.slug}">
                <h2>${post.title}</h2>
            </a>
            <p>${post.perex?no_esc}</p>
        </li>
    [/#list]
</ul>
</body>
</html>

