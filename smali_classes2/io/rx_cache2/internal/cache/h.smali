.class public final Lio/rx_cache2/internal/cache/h;
.super Lio/rx_cache2/internal/cache/a;
.source "GetDeepCopy.java"


# instance fields
.field private final c:Lio/victoralbertos/jolyglot/JolyglotGenerics;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    .line 18
    iput-object p3, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v1, Ljava/util/List;

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 50
    iget-object v3, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    aput-object v0, v4, v2

    invoke-interface {v3, v1, v4}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 57
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 58
    array-length v1, v0

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 60
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 71
    :cond_0
    const-class v1, Ljava/util/Map;

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    iget-object v4, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/reflect/Type;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-interface {v4, v1, v5}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/reflect/Type;

    invoke-interface {v1, v0, v2}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lio/rx_cache2/internal/cache/h;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v1, p1, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    .line 26
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    .line 31
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 33
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 35
    :cond_2
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method
