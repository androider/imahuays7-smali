.class public Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;
.super Ljava/lang/Object;
.source "DefaultUrlParser.java"

# interfaces
.implements Lme/jessyan/retrofiturlmanager/parser/UrlParser;


# instance fields
.field private volatile mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

.field private mDomainUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

.field private mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

.field private volatile mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    .line 47
    new-instance v0, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;

    invoke-direct {v0}, Lme/jessyan/retrofiturlmanager/parser/DomainUrlParser;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mDomainUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    .line 48
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mDomainUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-interface {v0, p1}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    return-void
.end method

.method public parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    .line 55
    :cond_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#baseurl_path_size="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    if-nez v0, :cond_2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lme/jessyan/retrofiturlmanager/parser/SuperUrlParser;

    invoke-direct {v0}, Lme/jessyan/retrofiturlmanager/parser/SuperUrlParser;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    .line 60
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-interface {v0, v1}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    .line 62
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mSuperUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-interface {v0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    .line 68
    :cond_3
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-virtual {v0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isAdvancedModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    if-nez v0, :cond_5

    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    if-nez v0, :cond_4

    .line 72
    new-instance v0, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;

    invoke-direct {v0}, Lme/jessyan/retrofiturlmanager/parser/AdvancedUrlParser;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    .line 73
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mRetrofitUrlManager:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-interface {v0, v1}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    .line 75
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 77
    :cond_5
    :goto_1
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mAdvancedUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-interface {v0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    .line 79
    :cond_6
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;->mDomainUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-interface {v0, p1, p2}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method
