.class public final Lcom/flurry/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sput-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    const-string v1, "com.flurry.configkey.prod.ec.1"

    const-string v2, "MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEUIHE6WoN5aYqD4IWDdIUPN0JyceObw3beer5bNRRL9CfYa6b6ZPm8TOBvrzGI7rdhvVKcWEr8K19H+p6ULitNOhVi2khe0Q2eY277x8J2RYreFsBLn2VpamllAPWP/ug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    const-string v1, "com.flurry.configkey.prod.ec.0"

    const-string v2, "MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAENORwdAhpQEoultf9EL7t5os6nlvNoP6GDi8J/7SYtRURPfp0m7X2F943IHoPG88CKIGamplHucB5JRY4qeMAFL1CjKBfz/HXAwlyr6vqlvQq4bgiFiYbtp06WbxPpgS+"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    const-string v1, "com.flurry.configkey.prod.rot.6"

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzvAAr6z1gbO9ucUPKNjrMk+f1zvTNc+KIVG3aX7V8QpaR+xj/yQRCxphCOYhPrbdSIuIUrHZuWbgyBtc2ReDchx4/QwdHBHuOW+GI0Yon+ILhq9QpD/0tXbcEWb6G3xYZvJTW7qrRBnY4tuSb3NXMHvDLOE2JHsyG+X4bUeG43IyzAnQ8MyMUfSNOSOk2IbXp0HCzCrJoMlLyrvx7gYPZI4hlJsNllpLtvofUeKbgU7FwEiImDJAxJDf210KVtx5K68q3mqI23g2JrA6cvduqgqseHOfBLpdJsVEojFHfx396+PFJ02lEKQjbQacID0yeKRgYTOiZ5SBWjv1O7VKvwIDAQAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    const-string v1, "com.flurry.configkey.prod.rot.5"

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzUvIRyRXS3KDGhvT8NA2ZLkh1YyAaYsq7Cp0aFEwo7vOHxg7NmojBgTuhov/wBm8WPRwWZyMH212w3yBXht9KWvo+w82EuNGXVHlVWqdvOoJHpIPHHs0fvfWc7f3QnlgQbmsuUy6COwYsDskoM5EvfowFtgrCLqVDM/pgp2JlrkX1UEMFxJuTKUvh7jv8qerF9DHcbxybBHfSU6ur/A47If6qBifyBUKrx/8AK9vweDBzfvEJ7mpjU2TAITwz1QCeBQ2ITTAyGRLdKtfcIg1K46eQjYQNinIog2yjQFMpxSVZyD98O3JQXpmnhvJ+HdSJWNoDK2I9m1q/jW5ZtUJhQIDAQAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    const-string v1, "com.flurry.configkey.prod.fs.0"

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA14EW/6GgoeI3pRNnm2iBVlFI13frhoF8iFdEIUDgFq7Wte5kTXtO/QKT+wixBksDWrSq+gghoJf3InqpQSYGRlXl2FybYaZ+8beB6mQLY2xbUSg0P8iGGt2vg1rUAcuAucgYEkp3/HP1mUJ5Sr5VkeswDlxHQVJE9B14HW76UrYe8xi9/0Os5RlUNZiuUxU6vvUzOEhQjz2iBG0WH+bbS6zYC4KqORH9vmgXKPRo/fziZri3PANPTtEuM6n2XBRUMqfbIHGj1IqwwvQH4ExD91Bca7U//vAT/yYkoC7vDx/3r2SnKozIIdZk9+69axrnjhkVFI/HgiCvYPQzfLwavwIDAQAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 46
    sput-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "SVqWumuteCQHvVIaALrOZXuzVVVeS7f4FGxxu6V+es4="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "cAajgxHlj7GTSEIzIYIQxmEloOSoJq7VOaxWHfv72QM="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "I/Lt/z7ekCWanjD0Cvj5EqXls2lOaThEA0H2Bg4BT/o="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "Wd8xe/qfTwq3ylFNd3IpaqLHZbh2ZNCLluVzmeNkcpw="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "JbQbUG5JMJUoI6brnx0x3vZF6jilxsapbXGVfjhN8Fg="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "UZJDjsNp1+4M5x9cbbdflB779y5YRBcV6Z6rBMLIrO4="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "lnsM2T/O9/J84sJFdnrpsFp3awZJ+ZZbYpCWhGloaHI="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "uUwZgwDOxcBXrQcntwu+kYFpkiVkOaezL0WYEZ3anJc="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "dolnbtzEBnELx/9lOEQ22e6OZO/QNb6VSSX2XHA3E7A="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/flurry/sdk/v;->b:Ljava/util/Set;

    const-string v1, "2fRAUXyxl4A1/XHrKNBmc8bTkzA7y4FB/GLJuNAzCqY="

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
