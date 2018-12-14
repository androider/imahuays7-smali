.class public Lorg/apache/httpcore/b/e;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/httpcore/a;


# static fields
.field public static final a:Lorg/apache/httpcore/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/httpcore/b/e;

    invoke-direct {v0}, Lorg/apache/httpcore/b/e;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/e;->a:Lorg/apache/httpcore/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Lorg/apache/httpcore/n;->e()Lorg/apache/httpcore/w;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-interface {p2}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_1

    const/16 p2, 0x130

    if-eq p1, p2, :cond_1

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)Z
    .locals 5

    const-string v0, "HTTP response"

    .line 80
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 81
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.request"

    .line 83
    invoke-interface {p2, v0}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/httpcore/n;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 86
    :try_start_0
    new-instance v1, Lorg/apache/httpcore/message/k;

    const-string v2, "Connection"

    invoke-interface {p2, v2}, Lorg/apache/httpcore/n;->e(Ljava/lang/String;)Lorg/apache/httpcore/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/httpcore/message/k;-><init>(Lorg/apache/httpcore/g;)V

    .line 87
    :cond_0
    invoke-interface {v1}, Lorg/apache/httpcore/y;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v1}, Lorg/apache/httpcore/y;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Close"

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/httpcore/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :catch_0
    return v0

    .line 101
    :cond_1
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v1

    const-string v2, "Transfer-Encoding"

    .line 102
    invoke-interface {p1, v2}, Lorg/apache/httpcore/q;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string p2, "chunked"

    .line 104
    invoke-interface {v2}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    .line 108
    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/apache/httpcore/b/e;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Content-Length"

    .line 109
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;)[Lorg/apache/httpcore/e;

    move-result-object p2

    .line 111
    array-length v2, p2

    if-ne v2, v3, :cond_3

    .line 112
    aget-object p2, p2, v0

    .line 114
    :try_start_1
    invoke-interface {p2}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-gez p2, :cond_4

    return v0

    :catch_1
    return v0

    :cond_3
    return v0

    :cond_4
    const-string p2, "Connection"

    .line 130
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->e(Ljava/lang/String;)Lorg/apache/httpcore/g;

    move-result-object p2

    .line 131
    invoke-interface {p2}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p2, "Proxy-Connection"

    .line 132
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->e(Ljava/lang/String;)Lorg/apache/httpcore/g;

    move-result-object p2

    .line 158
    :cond_5
    invoke-interface {p2}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 160
    :try_start_2
    new-instance p1, Lorg/apache/httpcore/message/k;

    invoke-direct {p1, p2}, Lorg/apache/httpcore/message/k;-><init>(Lorg/apache/httpcore/g;)V

    const/4 p2, 0x0

    .line 162
    :cond_6
    :goto_0
    invoke-interface {p1}, Lorg/apache/httpcore/y;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    invoke-interface {p1}, Lorg/apache/httpcore/y;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Close"

    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v0

    :cond_7
    const-string v4, "Keep-Alive"

    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Lorg/apache/httpcore/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_6

    const/4 p2, 0x1

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    return v3

    :catch_2
    return v0

    .line 183
    :cond_9
    sget-object p1, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    invoke-virtual {v1, p1}, Lorg/apache/httpcore/ProtocolVersion;->lessEquals(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1
.end method
