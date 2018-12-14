.class public Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;
.super Ljava/lang/Object;
.source "AdvancedUrlParser.java"

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

.field private mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 118
    invoke-virtual {p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getPathSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 66
    new-instance p1, Lme/jessyan/retrofiturlmanager/cache/LruCache;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lme/jessyan/retrofiturlmanager/cache/LruCache;-><init>(I)V

    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    return-void
.end method

.method public parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 5

    if-nez p1, :cond_0

    return-object p2

    .line 73
    :cond_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    :goto_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->removePathSegment(I)Lokhttp3/HttpUrl$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v3

    iget-object v4, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-virtual {v4}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getPathSize()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 85
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v1

    .line 86
    iget-object v3, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-virtual {v3}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getPathSize()I

    move-result v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v3

    iget-object v4, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-virtual {v4}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getPathSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your final path is %s, but the baseUrl of your RetrofitUrlManager#startAdvancedModel is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 92
    invoke-virtual {v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getBaseUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 93
    invoke-virtual {v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getBaseUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 94
    invoke-virtual {v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getBaseUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v2, v1

    .line 90
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_2

    .line 101
    :cond_4
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 105
    :cond_5
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->mCache:Lme/jessyan/retrofiturlmanager/cache/Cache;

    invoke-direct {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;->getKey(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lme/jessyan/retrofiturlmanager/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
