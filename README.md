# Asymmetric cryptography

How A can send message to B, so that no one but B can read it?

# Setting

|     |   Private  |   Public   |
| :-: | :--------: | :--------: |
|  A  |  pvtA.pem  |  pubA.pem  |
|  B  |  pvtB.pem  |  pubB.pem  |

A and B will exchange their public keys. (It doesn't really matter if anyone else get the public as well) <br />

Generate the key pairs, by doing the following.

1. Generating private keys
```shell
openssl genpkey -algorithm RSA -out pvtA.pem \
&& openssl genpkey -algorithm RSA -out pvtB.pem

```
2. Add private keys to gitignore
```shell
echo "pvtA.pem\npvtB.pem" >> .gitignore
```
3. Generating corresponding public keys
```shell
openssl rsa -pubout -in pvtA.pem -out pubA.pem \
&& openssl rsa -pubout -in pvtA.pem -out pubB.pem
```
