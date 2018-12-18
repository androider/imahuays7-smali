.class public Lcom/mh/movie/core/app/i;
.super Ljava/lang/Object;
.source "GlobalHttpHandlerImpl.java"

# interfaces
.implements Lcom/jess/arms/http/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/app/i;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/app/i;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/app/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 106
    :cond_0
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "DOMAIN_AVAILABLE_URL"

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/b;->k:Z

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/UrlUtils;->isContainKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getEncryptPackageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 110
    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getTerminal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v3, v2}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->createHeaderInfo(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;

    move-result-object v3

    .line 115
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    .line 117
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "?"

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "?"

    .line 119
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 120
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "&"

    goto :goto_1

    :cond_3
    const-string p2, "?"

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "time="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 131
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 134
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    :goto_2
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 138
    sput-object p2, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    .line 140
    :cond_6
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v0, ""

    .line 141
    :goto_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v2, "application/json"

    .line 143
    invoke-virtual {p1, p2, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Accept"

    const-string v2, "application/json"

    .line 144
    invoke-virtual {p1, p2, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "accessToken"

    .line 145
    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-NonceStr"

    .line 146
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXClientNonceStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-IP"

    .line 147
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXClientIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-TimeStamp"

    .line 148
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXClientTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-Version"

    .line 149
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXClientVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-Sign"

    .line 150
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXClientSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Client-Token"

    .line 151
    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "X-Auth-Token"

    .line 152
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->getXAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 157
    :cond_8
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v0, "application/json"

    .line 158
    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Accept"

    const-string v0, "application/json"

    .line 159
    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/jess/arms/http/log/RequestInterceptor;->d(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 70
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result ------> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object p3

    :cond_0
    :goto_0
    const-string p1, "X-Server-TimeStamp"

    .line 77
    invoke-virtual {p3, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "X-Server-TimeStamp"

    invoke-virtual {p3, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sub-long v2, p1, v0

    sput-wide v2, Lcom/mh/movie/core/mvp/ui/b;->b:J

    :cond_1
    return-object p3
.end method
