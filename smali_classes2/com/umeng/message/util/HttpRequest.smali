.class public Lcom/umeng/message/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
        Lcom/umeng/message/util/HttpRequest$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:I = 0xea60

.field private static c:I = 0xea60

.field private static d:Lcom/umeng/message/util/HttpRequest$a;


# instance fields
.field private e:Ljava/net/HttpURLConnection;

.field private final f:Ljava/net/URL;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->a:[Ljava/lang/String;

    .line 388
    sget-object v0, Lcom/umeng/message/util/HttpRequest$a;->a:Lcom/umeng/message/util/HttpRequest$a;

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->d:Lcom/umeng/message/util/HttpRequest$a;

    return-void
.end method

.method private d()Ljava/net/Proxy;
    .locals 5

    .line 1388
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/umeng/message/util/HttpRequest;->h:Ljava/lang/String;

    iget v4, p0, Lcom/umeng/message/util/HttpRequest;->i:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private e()Ljava/net/HttpURLConnection;
    .locals 3

    .line 1394
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1395
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->d:Lcom/umeng/message/util/HttpRequest$a;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->f:Ljava/net/URL;

    invoke-direct {p0}, Lcom/umeng/message/util/HttpRequest;->d()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/message/util/HttpRequest$a;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0

    .line 1397
    :cond_0
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->d:Lcom/umeng/message/util/HttpRequest$a;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->f:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/umeng/message/util/HttpRequest$a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1398
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1401
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->e:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1417
    invoke-direct {p0}, Lcom/umeng/message/util/HttpRequest;->e()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->e:Ljava/net/HttpURLConnection;

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->e:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public b()Ljava/net/URL;
    .locals 1

    .line 3072
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 3081
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
