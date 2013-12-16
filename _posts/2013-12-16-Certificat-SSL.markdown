---
categories: info, cypherpunk
date: 2013/12/16 12:34:56
title: Certificat SSL
author: tom
summary: "Renouvellement du certificat SSL."
---

Le certificat SSL du Loop est à nouveau signé par
[CACert](http://cacert.org/) (après quelques longs mois de transition avec
un certificat autosigné et/ou expiré et/ou mal implémenté). Ce certificat
est déployé sur l'ensemble des vhosts.

Pour que votre navigateur vérifie la validité du certificat, il suffit
d'installer la racine [class3](http://www.cacert.org/certs/class3.crt)
de CACert.

Vous pouvez en vérifier l'empreinte SHA1 :

`04:43:71:5E:54:7B:DA:30:4E:D3:EC:66:51:4F:93:6B`

Ou bien, si vous êtes coincés au siècle dernier, l'empreinte MD5 :

`60:B8:D3:6A:1D:9F:6A:43:2B:14:D8:74:28:05:1A:01:74:42:6B:A9`

Le certificat complet :

    -----BEGIN CERTIFICATE-----
    MIIGczCCBFugAwIBAgIDAha4MA0GCSqGSIb3DQEBBQUAMFQxFDASBgNVBAoTC0NB
    Y2VydCBJbmMuMR4wHAYDVQQLExVodHRwOi8vd3d3LkNBY2VydC5vcmcxHDAaBgNV
    BAMTE0NBY2VydCBDbGFzcyAzIFJvb3QwHhcNMTMxMjA5MTIwNjA1WhcNMTUxMjA5
    MTIwNjA1WjAVMRMwEQYDVQQDEwpsZWxvb3Aub3JnMIICIjANBgkqhkiG9w0BAQEF
    AAOCAg8AMIICCgKCAgEA1IMnibtfULd2+460QWs+WaYNjsOz+++DaxA90YIovZ5Y
    6ldpNowowXtQGjofdkBj4BvlmOh5M14ny89emFwlgf3ghCRe0L1IVRNyFvMYBKil
    GGpcZb/TngbhD1bb0DXTbseW48SVRDudGo2QCyaeFwJduSFkiKwLr8otTeqJa+MD
    RGc51z6XI5FYm3SY+HdZjAo+C99M5fu3+O6DUCIYkyBkc9rG+YF6rM0vkfTiNLY9
    osH7TtIWm98gcQ5zLzEB6nKuZvCVuoUDevHMJJuUy6LA7GctLp4kJOLjwhQ31/F6
    5MuMGp29WHl91yikWKnp/Poxjko9pY4+fZSGppOfXWpycZzuVSPCnUY6Kgs3HBs3
    udT08LJC2g7oytHBi60Zsayt/c98z/nGKeypccwS6TB1Vtjz6xnNhZrAzXzL96Wn
    st5llProh5A1CBdSFUqkHbFMvkabsfLebA8T+YqrLeuNNP08dDgzLk6mzjN9Uu58
    aqI/e0UAXZEsczYkIbSp2UtF+JaDHOrS75PnotLkG7ZtjO3yXEDOvUXz2oSkDnn5
    xF3GE8UjJ+aqTe0QATlDo4rJeLFBFivvt9pMwe4R5WODKjBNdhTM3D9/VsLGCoaq
    N/HlM2YEszULgmzzyBCqP0chLATzuGS9FufPGPBfWXbeqqILqQ8dNDEyo0tzDx8C
    AwEAAaOCAYswggGHMAwGA1UdEwEB/wQCMAAwDgYDVR0PAQH/BAQDAgOoMDQGA1Ud
    JQQtMCsGCCsGAQUFBwMCBggrBgEFBQcDAQYJYIZIAYb4QgQBBgorBgEEAYI3CgMD
    MDMGCCsGAQUFBwEBBCcwJTAjBggrBgEFBQcwAYYXaHR0cDovL29jc3AuY2FjZXJ0
    Lm9yZy8wOAYDVR0fBDEwLzAtoCugKYYnaHR0cDovL2NybC5jYWNlcnQub3JnL2Ns
    YXNzMy1yZXZva2UuY3JsMIHBBgNVHREEgbkwgbaCCmxlbG9vcC5vcmegGAYIKwYB
    BQUHCAWgDAwKbGVsb29wLm9yZ4IMKi5sZWxvb3Aub3JnoBoGCCsGAQUFBwgFoA4M
    DCoubGVsb29wLm9yZ4IQKi5sYW4ubGVsb29wLm9yZ6AeBggrBgEFBQcIBaASDBAq
    Lmxhbi5sZWxvb3Aub3JnghEqLnRyYWMubGVsb29wLm9yZ6AfBggrBgEFBQcIBaAT
    DBEqLnRyYWMubGVsb29wLm9yZzANBgkqhkiG9w0BAQUFAAOCAgEAQzyksbtCJn45
    XTW5wzlYWfllAp7xnDv5zCy6DLKsZj2+RmOnHKnvb/qbg1G661WsnSa8qLV9C4vu
    VaLZNRwSt+aOZnPwAzuhfwh3pzE4mB0BIynpAT3fKI6NPxxh7QFLXPxHxEDEEkNH
    2Y/Ro4xnzDkLTtHrJ9S5S/bH0A6mubBzAc4VjUIrnVL4LI1u78fv39MO6rjcVhwt
    3tSytY03AzpdlvZkZiQNFG/lmc+rs5+PU5aKqpXYC1kgLxHak82PAKfaHk5TKeGa
    8zoBrlSVFi6hRYF43EeGACuJ92+GjjFZkxN5kL/zIDa08U6SM6ohliznvQcxJqNV
    xBby19AUiU9eVOPRnXpYFitO78HTfSDnMn7482Ls9nye/wSctZIBOg2w9+gVR6m1
    S8fHOd+Scl5/YRKvdEa/1t+DKOIBXkl29PRLQ9MYABvEubVvSQKGs87uFdWSN4z3
    BBCYfwft65YDthOhjr4UGJ2Zz8YG3Hyr5RKEDMUdQoabHTr3wjgdKIXsUub+ChSv
    DlHKSfmnh6yw6abjGm5g+4w9zi7nxpbnxkoenqF8vs3t8sC1EOX9+z9k5k+T9HaG
    GTJUsvQ1dMctyE04TQd1R8nqenJT5aPfAZ8hGOWwg1vRTPGL+tRPDwY1gi0ewEZ8
    fqSfLB0WrsBM7jS8MNcd4hBDSEJBXek=
    -----END CERTIFICATE-----
