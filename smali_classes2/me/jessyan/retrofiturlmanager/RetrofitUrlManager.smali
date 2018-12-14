.class public Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
.super Ljava/lang/Object;
.source "RetrofitUrlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;
    }
.end annotation


# static fields
.field private static final DEPENDENCY_OKHTTP:Z

.field private static final DOMAIN_NAME:Ljava/lang/String; = "Domain-Name"

.field public static final DOMAIN_NAME_HEADER:Ljava/lang/String; = "Domain-Name: "

.field private static final GLOBAL_DOMAIN_NAME:Ljava/lang/String; = "me.jessyan.retrofiturlmanager.globalDomainName"

.field public static final IDENTIFICATION_IGNORE:Ljava/lang/String; = "#url_ignore"

.field public static final IDENTIFICATION_PATH_SIZE:Ljava/lang/String; = "#baseurl_path_size="

.field private static final TAG:Ljava/lang/String; = "RetrofitUrlManager"


# instance fields
.field private baseUrl:Lokhttp3/HttpUrl;

.field private debug:Z

.field private isRun:Z

.field private final mDomainNameHub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptor:Lokhttp3/Interceptor;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/jessyan/retrofiturlmanager/onUrlChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

.field private pathSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    .line 115
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    sput-boolean v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->DEPENDENCY_OKHTTP:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    .line 125
    sget-boolean v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->DEPENDENCY_OKHTTP:Z

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be dependency Okhttp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    new-instance v0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;

    invoke-direct {v0}, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;-><init>()V

    .line 129
    invoke-interface {v0, p0}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    .line 130
    invoke-virtual {p0, v0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->setUrlParser(Lme/jessyan/retrofiturlmanager/parser/UrlParser;)V

    .line 131
    new-instance v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;

    invoke-direct {v0, p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;-><init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method synthetic constructor <init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;-><init>()V

    return-void
.end method

.method public static final getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
    .locals 1

    .line 146
    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;->access$100()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object v0

    return-object v0
.end method

.method private listenersToArray()[Ljava/lang/Object;
    .locals 2

    .line 509
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 513
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 241
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 242
    aget-object v1, p3, v0

    check-cast v1, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;->onUrlChangeBefore(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainDomainNameFromHeaders(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    const-string v0, "Domain-Name"

    .line 524
    invoke-virtual {p1, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 528
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one Domain-Name in the headers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "Domain-Name"

    .line 529
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private pruneIdentification(Lokhttp3/Request$Builder;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4

    const-string v0, "#url_ignore"

    .line 222
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearAllDomain()V
    .locals 1

    .line 451
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized domainSize()I
    .locals 1

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchDomain(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "domainName cannot be null"

    .line 431
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/HttpUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 430
    monitor-exit p0

    throw p1
.end method

.method public getBaseUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 347
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public declared-synchronized getGlobalDomain()Lokhttp3/HttpUrl;
    .locals 2

    monitor-enter p0

    .line 398
    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v1, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/HttpUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPathSize()I
    .locals 1

    .line 329
    iget v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    return v0
.end method

.method public declared-synchronized haveDomain(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAdvancedModel()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRun()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    return v0
.end method

.method public processRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#url_ignore"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0, v0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pruneIdentification(Lokhttp3/Request$Builder;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->obtainDomainNameFromHeaders(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-direct {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->listenersToArray()[Ljava/lang/Object;

    move-result-object v2

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    invoke-direct {p0, p1, v1, v2}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->fetchDomain(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    const-string v3, "Domain-Name"

    .line 188
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    const-string v1, "me.jessyan.retrofiturlmanager.globalDomainName"

    .line 190
    invoke-direct {p0, p1, v1, v2}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getGlobalDomain()Lokhttp3/HttpUrl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 195
    iget-object v3, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 196
    iget-boolean v3, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    if-eqz v3, :cond_3

    const-string v3, "RetrofitUrlManager"

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The new url is { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " }, old url is { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 200
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 201
    aget-object v4, v2, v3

    check-cast v4, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;->onUrlChanged(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 210
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public putDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "domainName cannot be null"

    .line 417
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "domainUrl cannot be null"

    .line 418
    invoke-static {p2, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-static {p2}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerUrlChangeListener(Lme/jessyan/retrofiturlmanager/onUrlChangeListener;)V
    .locals 2

    const-string v0, "listener cannot be null"

    .line 489
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeDomain(Ljava/lang/String;)V
    .locals 2

    const-string v0, "domainName cannot be null"

    .line 441
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeGlobalDomain()V
    .locals 3

    .line 405
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v2, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDebug(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    return-void
.end method

.method public setGlobalDomain(Ljava/lang/String;)V
    .locals 3

    const-string v0, "globalDomain cannot be null"

    .line 388
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v2, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-static {p1}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPathSizeOfUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "url cannot be null"

    .line 375
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 376
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pathSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#baseurl_path_size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setRun(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    return-void
.end method

.method public setUrlNotChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "url cannot be null"

    .line 361
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#url_ignore"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setUrlParser(Lme/jessyan/retrofiturlmanager/parser/UrlParser;)V
    .locals 1

    const-string v0, "parser cannot be null"

    .line 479
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    return-void
.end method

.method public startAdvancedModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "baseUrl cannot be null"

    .line 292
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-static {p1}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->startAdvancedModel(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public declared-synchronized startAdvancedModel(Lokhttp3/HttpUrl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "baseUrl cannot be null"

    .line 314
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    .line 316
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v0

    iput v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    .line 317
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit p0

    throw p1
.end method

.method public unregisterUrlChangeListener(Lme/jessyan/retrofiturlmanager/onUrlChangeListener;)V
    .locals 2

    const-string v0, "listener cannot be null"

    .line 501
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public with(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "builder cannot be null"

    .line 156
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mInterceptor:Lokhttp3/Interceptor;

    .line 158
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method
