.class public Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;
.super Ljava/lang/Object;
.source "DomainUrlParser.java"

# interfaces
.implements Lme/jessyan/retrofiturlmanager/parser/UrlParser;


# instance fields
.field private mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/jessyan/retrofiturlmanager/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V
    .locals 1

    .line 52
    new-instance p1, Lme/jessyan/retrofiturlmanager/cache/LruCache;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lme/jessyan/retrofiturlmanager/cache/LruCache;-><init>(I)V

    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    return-void
.end method

.method public parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 63
    :cond_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->removePathSegment(I)Lokhttp3/HttpUrl$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 83
    :cond_3
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method
