.class public final Lorg/android/spdy/h;
.super Ljava/lang/Object;
.source "SpdyRequest.java"


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/android/spdy/RequestPriority;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0.0"

    .line 23
    iput-object v0, p0, Lorg/android/spdy/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/android/spdy/h;->f:I

    .line 28
    iput v0, p0, Lorg/android/spdy/h;->j:I

    .line 29
    iput v0, p0, Lorg/android/spdy/h;->k:I

    .line 30
    iput v0, p0, Lorg/android/spdy/h;->l:I

    .line 34
    iput-object p1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lorg/android/spdy/h;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/android/spdy/h;->c:Ljava/lang/String;

    .line 37
    iput p3, p0, Lorg/android/spdy/h;->d:I

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 39
    iput-object p4, p0, Lorg/android/spdy/h;->e:Ljava/lang/String;

    .line 40
    iput p5, p0, Lorg/android/spdy/h;->f:I

    .line 42
    :cond_0
    iput-object p6, p0, Lorg/android/spdy/h;->g:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    .line 44
    iput-object p7, p0, Lorg/android/spdy/h;->i:Lorg/android/spdy/RequestPriority;

    if-nez p7, :cond_1

    .line 46
    sget-object p1, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object p1, p0, Lorg/android/spdy/h;->i:Lorg/android/spdy/RequestPriority;

    .line 48
    :cond_1
    iput p8, p0, Lorg/android/spdy/h;->j:I

    .line 49
    iput p9, p0, Lorg/android/spdy/h;->k:I

    .line 50
    iput p10, p0, Lorg/android/spdy/h;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0.0"

    .line 23
    iput-object v0, p0, Lorg/android/spdy/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/android/spdy/h;->f:I

    .line 28
    iput v0, p0, Lorg/android/spdy/h;->j:I

    .line 29
    iput v0, p0, Lorg/android/spdy/h;->k:I

    .line 30
    iput v0, p0, Lorg/android/spdy/h;->l:I

    .line 87
    iput-object p1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lorg/android/spdy/h;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/h;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/h;->d:I

    .line 91
    iget v0, p0, Lorg/android/spdy/h;->d:I

    if-gez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result p1

    iput p1, p0, Lorg/android/spdy/h;->d:I

    .line 94
    :cond_0
    iput-object p2, p0, Lorg/android/spdy/h;->g:Ljava/lang/String;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    .line 96
    iput-object p3, p0, Lorg/android/spdy/h;->i:Lorg/android/spdy/RequestPriority;

    if-nez p3, :cond_1

    .line 98
    sget-object p1, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object p1, p0, Lorg/android/spdy/h;->i:Lorg/android/spdy/RequestPriority;

    .line 100
    :cond_1
    iput p4, p0, Lorg/android/spdy/h;->j:I

    .line 101
    iput p5, p0, Lorg/android/spdy/h;->k:I

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "?"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "#"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/android/spdy/h;->i:Lorg/android/spdy/RequestPriority;

    invoke-virtual {v0}, Lorg/android/spdy/RequestPriority;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, ":path"

    .line 254
    invoke-direct {p0}, Lorg/android/spdy/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ":method"

    .line 255
    iget-object v2, p0, Lorg/android/spdy/h;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ":version"

    const-string v2, "HTTP/1.1"

    .line 256
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ":host"

    .line 257
    iget-object v2, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ":scheme"

    .line 258
    iget-object v2, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/android/spdy/h;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/spdy/h;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/android/spdy/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/android/spdy/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/h;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/spdy/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 304
    iget v0, p0, Lorg/android/spdy/h;->j:I

    return v0
.end method
