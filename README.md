# Odoo Project with Ak recipe for ShopInvader project 

## How to use it

Clone it

```
git clone https://github.com/akretion/docker-odoo-shopinvader -b 'branch's name'
```


Launch ak

If you need help on ak: https://github.com/akretion/ak/wiki


```
cd odoo
```

Then 

```
ak build
```
Return main folder

```
cd ..
```
and build your app with docky

```
docky build
```

Start docky

```
docky run
```

Inside docky launch the cmd *migrate* to update your database

```
migrate
```
and then run your odoo inside Docky

```
odoo
```

Now your odoo is ready with everything is install
Avaiblable on : http://shopinvader-docky.dy

