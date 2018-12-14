.class public Lorg/apache/httpcore/d/l;
.super Ljava/lang/Object;
.source "HttpService.java"


# instance fields
.field private volatile a:Lorg/apache/httpcore/params/b;

.field private volatile b:Lorg/apache/httpcore/d/h;

.field private volatile c:Lorg/apache/httpcore/d/k;

.field private volatile d:Lorg/apache/httpcore/a;

.field private volatile e:Lorg/apache/httpcore/r;

.field private volatile f:Lorg/apache/httpcore/d/g;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/d/h;Lorg/apache/httpcore/a;Lorg/apache/httpcore/r;Lorg/apache/httpcore/d/k;Lorg/apache/httpcore/d/g;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->a:Lorg/apache/httpcore/params/b;

    .line 82
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->b:Lorg/apache/httpcore/d/h;

    .line 83
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->c:Lorg/apache/httpcore/d/k;

    .line 84
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->d:Lorg/apache/httpcore/a;

    .line 85
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    .line 86
    iput-object v0, p0, Lorg/apache/httpcore/d/l;->f:Lorg/apache/httpcore/d/g;

    const-string v0, "HTTP processor"

    .line 187
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/d/h;

    iput-object p1, p0, Lorg/apache/httpcore/d/l;->b:Lorg/apache/httpcore/d/h;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    sget-object p2, Lorg/apache/httpcore/b/e;->a:Lorg/apache/httpcore/b/e;

    :goto_0
    iput-object p2, p0, Lorg/apache/httpcore/d/l;->d:Lorg/apache/httpcore/a;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    sget-object p3, Lorg/apache/httpcore/b/g;->a:Lorg/apache/httpcore/b/g;

    :goto_1
    iput-object p3, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    .line 192
    iput-object p4, p0, Lorg/apache/httpcore/d/l;->c:Lorg/apache/httpcore/d/k;

    .line 193
    iput-object p5, p0, Lorg/apache/httpcore/d/l;->f:Lorg/apache/httpcore/d/g;

    return-void
.end method

.method private a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "HEAD"

    .line 373
    invoke-interface {p1}, Lorg/apache/httpcore/n;->e()Lorg/apache/httpcore/w;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 376
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
.method protected a(Lorg/apache/httpcore/HttpException;Lorg/apache/httpcore/q;)V
    .locals 1

    .line 392
    instance-of v0, p1, Lorg/apache/httpcore/MethodNotSupportedException;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f5

    .line 393
    invoke-interface {p2, v0}, Lorg/apache/httpcore/q;->a(I)V

    goto :goto_0

    .line 394
    :cond_0
    instance-of v0, p1, Lorg/apache/httpcore/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    const/16 v0, 0x1f9

    .line 395
    invoke-interface {p2, v0}, Lorg/apache/httpcore/q;->a(I)V

    goto :goto_0

    .line 396
    :cond_1
    instance-of v0, p1, Lorg/apache/httpcore/ProtocolException;

    if-eqz v0, :cond_2

    const/16 v0, 0x190

    .line 397
    invoke-interface {p2, v0}, Lorg/apache/httpcore/q;->a(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    .line 399
    invoke-interface {p2, v0}, Lorg/apache/httpcore/q;->a(I)V

    .line 401
    :goto_0
    invoke-virtual {p1}, Lorg/apache/httpcore/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 403
    invoke-virtual {p1}, Lorg/apache/httpcore/HttpException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_3
    invoke-static {v0}, Lorg/apache/httpcore/util/c;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 406
    new-instance v0, Lorg/apache/httpcore/entity/c;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/entity/c;-><init>([B)V

    const-string p1, "text/plain; charset=US-ASCII"

    .line 407
    invoke-virtual {v0, p1}, Lorg/apache/httpcore/entity/c;->a(Ljava/lang/String;)V

    .line 408
    invoke-interface {p2, v0}, Lorg/apache/httpcore/q;->a(Lorg/apache/httpcore/j;)V

    return-void
.end method

.method protected a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/apache/httpcore/d/l;->c:Lorg/apache/httpcore/d/k;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/apache/httpcore/d/l;->c:Lorg/apache/httpcore/d/k;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/d/k;->a(Lorg/apache/httpcore/n;)Lorg/apache/httpcore/d/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 437
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/d/j;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x1f5

    .line 439
    invoke-interface {p2, p1}, Lorg/apache/httpcore/q;->a(I)V

    :goto_1
    return-void
.end method

.method public a(Lorg/apache/httpcore/t;Lorg/apache/httpcore/d/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    const-string v0, "http.connection"

    .line 302
    invoke-interface {p2, v0, p1}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    .line 308
    :try_start_0
    invoke-interface {p1}, Lorg/apache/httpcore/t;->c()Lorg/apache/httpcore/n;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/httpcore/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    :try_start_1
    instance-of v3, v2, Lorg/apache/httpcore/k;

    const/16 v4, 0xc8

    if-eqz v3, :cond_3

    .line 311
    move-object v3, v2

    check-cast v3, Lorg/apache/httpcore/k;

    invoke-interface {v3}, Lorg/apache/httpcore/k;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    iget-object v3, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    sget-object v5, Lorg/apache/httpcore/HttpVersion;->HTTP_1_1:Lorg/apache/httpcore/HttpVersion;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, p2}, Lorg/apache/httpcore/r;->a(Lorg/apache/httpcore/ProtocolVersion;ILorg/apache/httpcore/d/d;)Lorg/apache/httpcore/q;

    move-result-object v3

    .line 314
    iget-object v5, p0, Lorg/apache/httpcore/d/l;->f:Lorg/apache/httpcore/d/g;
    :try_end_1
    .catch Lorg/apache/httpcore/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_0

    .line 316
    :try_start_2
    iget-object v5, p0, Lorg/apache/httpcore/d/l;->f:Lorg/apache/httpcore/d/g;

    invoke-interface {v5, v2, v3, p2}, Lorg/apache/httpcore/d/g;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    :try_end_2
    .catch Lorg/apache/httpcore/HttpException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 318
    :try_start_3
    iget-object v5, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    sget-object v6, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    invoke-interface {v5, v6, v0, p2}, Lorg/apache/httpcore/r;->a(Lorg/apache/httpcore/ProtocolVersion;ILorg/apache/httpcore/d/d;)Lorg/apache/httpcore/q;

    move-result-object v5

    .line 320
    invoke-virtual {p0, v3, v5}, Lorg/apache/httpcore/d/l;->a(Lorg/apache/httpcore/HttpException;Lorg/apache/httpcore/q;)V

    move-object v3, v5

    .line 323
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 326
    invoke-interface {p1, v3}, Lorg/apache/httpcore/t;->a(Lorg/apache/httpcore/q;)V

    .line 327
    invoke-interface {p1}, Lorg/apache/httpcore/t;->d()V

    .line 329
    move-object v3, v2

    check-cast v3, Lorg/apache/httpcore/k;

    invoke-interface {p1, v3}, Lorg/apache/httpcore/t;->a(Lorg/apache/httpcore/k;)V

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_1

    .line 332
    :cond_2
    move-object v3, v2

    check-cast v3, Lorg/apache/httpcore/k;

    invoke-interface {p1, v3}, Lorg/apache/httpcore/t;->a(Lorg/apache/httpcore/k;)V

    :cond_3
    :goto_1
    const-string v3, "http.request"

    .line 336
    invoke-interface {p2, v3, v2}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_4

    .line 339
    iget-object v1, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    sget-object v3, Lorg/apache/httpcore/HttpVersion;->HTTP_1_1:Lorg/apache/httpcore/HttpVersion;

    invoke-interface {v1, v3, v4, p2}, Lorg/apache/httpcore/r;->a(Lorg/apache/httpcore/ProtocolVersion;ILorg/apache/httpcore/d/d;)Lorg/apache/httpcore/q;

    move-result-object v1

    .line 341
    iget-object v3, p0, Lorg/apache/httpcore/d/l;->b:Lorg/apache/httpcore/d/h;

    invoke-interface {v3, v2, p2}, Lorg/apache/httpcore/d/h;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)V

    .line 342
    invoke-virtual {p0, v2, v1, p2}, Lorg/apache/httpcore/d/l;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    .line 346
    :cond_4
    instance-of v3, v2, Lorg/apache/httpcore/k;

    if-eqz v3, :cond_5

    .line 347
    move-object v3, v2

    check-cast v3, Lorg/apache/httpcore/k;

    invoke-interface {v3}, Lorg/apache/httpcore/k;->b()Lorg/apache/httpcore/j;

    move-result-object v3

    .line 348
    invoke-static {v3}, Lorg/apache/httpcore/util/d;->a(Lorg/apache/httpcore/j;)V
    :try_end_3
    .catch Lorg/apache/httpcore/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 352
    :goto_2
    iget-object v3, p0, Lorg/apache/httpcore/d/l;->e:Lorg/apache/httpcore/r;

    sget-object v4, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    .line 353
    invoke-interface {v3, v4, v0, p2}, Lorg/apache/httpcore/r;->a(Lorg/apache/httpcore/ProtocolVersion;ILorg/apache/httpcore/d/d;)Lorg/apache/httpcore/q;

    move-result-object v0

    .line 355
    invoke-virtual {p0, v1, v0}, Lorg/apache/httpcore/d/l;->a(Lorg/apache/httpcore/HttpException;Lorg/apache/httpcore/q;)V

    :goto_3
    const-string v1, "http.response"

    .line 358
    invoke-interface {p2, v1, v0}, Lorg/apache/httpcore/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lorg/apache/httpcore/d/l;->b:Lorg/apache/httpcore/d/h;

    invoke-interface {v1, v0, p2}, Lorg/apache/httpcore/d/h;->a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    .line 361
    invoke-interface {p1, v0}, Lorg/apache/httpcore/t;->a(Lorg/apache/httpcore/q;)V

    .line 362
    invoke-direct {p0, v2, v0}, Lorg/apache/httpcore/d/l;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    invoke-interface {p1, v0}, Lorg/apache/httpcore/t;->b(Lorg/apache/httpcore/q;)V

    .line 365
    :cond_6
    invoke-interface {p1}, Lorg/apache/httpcore/t;->d()V

    .line 367
    iget-object v1, p0, Lorg/apache/httpcore/d/l;->d:Lorg/apache/httpcore/a;

    invoke-interface {v1, v0, p2}, Lorg/apache/httpcore/a;->a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 368
    invoke-interface {p1}, Lorg/apache/httpcore/t;->close()V

    :cond_7
    return-void
.end method
