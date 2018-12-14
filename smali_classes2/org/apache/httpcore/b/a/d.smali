.class public Lorg/apache/httpcore/b/a/d;
.super Ljava/lang/Object;
.source "ServerBootstrap.java"


# instance fields
.field private a:I

.field private b:Ljava/net/InetAddress;

.field private c:Lorg/apache/httpcore/a/c;

.field private d:Lorg/apache/httpcore/a/a;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/httpcore/p;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/httpcore/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/httpcore/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/httpcore/s;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lorg/apache/httpcore/d/h;

.field private k:Lorg/apache/httpcore/a;

.field private l:Lorg/apache/httpcore/r;

.field private m:Lorg/apache/httpcore/d/k;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/httpcore/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lorg/apache/httpcore/d/g;

.field private p:Ljavax/net/ServerSocketFactory;

.field private q:Ljavax/net/ssl/SSLContext;

.field private r:Lorg/apache/httpcore/b/a/c;

.field private s:Lorg/apache/httpcore/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/i<",
            "+",
            "Lorg/apache/httpcore/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lorg/apache/httpcore/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/httpcore/b/a/d;
    .locals 1

    .line 91
    new-instance v0, Lorg/apache/httpcore/b/a/d;

    invoke-direct {v0}, Lorg/apache/httpcore/b/a/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 98
    iput p1, p0, Lorg/apache/httpcore/b/a/d;->a:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lorg/apache/httpcore/d/j;)Lorg/apache/httpcore/b/a/d;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/a/d;->n:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/b/a/d;->n:Ljava/util/Map;

    .line 257
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/a/d;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final a(Ljava/net/InetAddress;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->b:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final a(Ljavax/net/ssl/SSLContext;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->q:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final a(Lorg/apache/httpcore/a/a;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->d:Lorg/apache/httpcore/a/a;

    return-object p0
.end method

.method public final a(Lorg/apache/httpcore/a/c;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->c:Lorg/apache/httpcore/a/c;

    return-object p0
.end method

.method public final a(Lorg/apache/httpcore/b/a/c;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->r:Lorg/apache/httpcore/b/a/c;

    return-object p0
.end method

.method public final a(Lorg/apache/httpcore/c;)Lorg/apache/httpcore/b/a/d;
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/apache/httpcore/b/a/d;->t:Lorg/apache/httpcore/c;

    return-object p0
.end method

.method public b()Lorg/apache/httpcore/b/a/a;
    .locals 17

    move-object/from16 v0, p0

    .line 315
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->j:Lorg/apache/httpcore/d/h;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 318
    invoke-static {}, Lorg/apache/httpcore/d/i;->a()Lorg/apache/httpcore/d/i;

    move-result-object v1

    .line 319
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->e:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/httpcore/p;

    .line 321
    invoke-virtual {v1, v4}, Lorg/apache/httpcore/d/i;->a(Lorg/apache/httpcore/p;)Lorg/apache/httpcore/d/i;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->g:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->g:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/httpcore/s;

    .line 326
    invoke-virtual {v1, v4}, Lorg/apache/httpcore/d/i;->a(Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;

    goto :goto_1

    .line 330
    :cond_1
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "Apache-HttpCore/1.1"

    :cond_2
    const/4 v4, 0x4

    .line 335
    new-array v4, v4, [Lorg/apache/httpcore/s;

    new-instance v5, Lorg/apache/httpcore/d/p;

    invoke-direct {v5}, Lorg/apache/httpcore/d/p;-><init>()V

    aput-object v5, v4, v2

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/httpcore/d/q;

    invoke-direct {v6, v3}, Lorg/apache/httpcore/d/q;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v3, 0x2

    new-instance v5, Lorg/apache/httpcore/d/o;

    invoke-direct {v5}, Lorg/apache/httpcore/d/o;-><init>()V

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Lorg/apache/httpcore/d/n;

    invoke-direct {v5}, Lorg/apache/httpcore/d/n;-><init>()V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lorg/apache/httpcore/d/i;->b([Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;

    .line 340
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->f:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    .line 341
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/httpcore/p;

    .line 342
    invoke-virtual {v1, v4}, Lorg/apache/httpcore/d/i;->b(Lorg/apache/httpcore/p;)Lorg/apache/httpcore/d/i;

    goto :goto_2

    .line 345
    :cond_3
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->h:Ljava/util/LinkedList;

    if-eqz v3, :cond_4

    .line 346
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/httpcore/s;

    .line 347
    invoke-virtual {v1, v4}, Lorg/apache/httpcore/d/i;->b(Lorg/apache/httpcore/s;)Lorg/apache/httpcore/d/i;

    goto :goto_3

    .line 350
    :cond_4
    invoke-virtual {v1}, Lorg/apache/httpcore/d/i;->b()Lorg/apache/httpcore/d/h;

    move-result-object v1

    :cond_5
    move-object v4, v1

    .line 353
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->m:Lorg/apache/httpcore/d/k;

    if-nez v1, :cond_6

    .line 355
    new-instance v1, Lorg/apache/httpcore/d/r;

    invoke-direct {v1}, Lorg/apache/httpcore/d/r;-><init>()V

    .line 356
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->n:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 357
    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/httpcore/d/j;

    invoke-virtual {v1, v6, v5}, Lorg/apache/httpcore/d/r;->a(Ljava/lang/String;Lorg/apache/httpcore/d/j;)V

    goto :goto_4

    :cond_6
    move-object v7, v1

    .line 364
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->k:Lorg/apache/httpcore/a;

    if-nez v1, :cond_7

    .line 366
    sget-object v1, Lorg/apache/httpcore/b/e;->a:Lorg/apache/httpcore/b/e;

    :cond_7
    move-object v5, v1

    .line 369
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->l:Lorg/apache/httpcore/r;

    if-nez v1, :cond_8

    .line 371
    sget-object v1, Lorg/apache/httpcore/b/g;->a:Lorg/apache/httpcore/b/g;

    :cond_8
    move-object v6, v1

    .line 374
    new-instance v13, Lorg/apache/httpcore/d/l;

    iget-object v8, v0, Lorg/apache/httpcore/b/a/d;->o:Lorg/apache/httpcore/d/g;

    move-object v3, v13

    invoke-direct/range {v3 .. v8}, Lorg/apache/httpcore/d/l;-><init>(Lorg/apache/httpcore/d/h;Lorg/apache/httpcore/a;Lorg/apache/httpcore/r;Lorg/apache/httpcore/d/k;Lorg/apache/httpcore/d/g;)V

    .line 378
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->p:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_a

    .line 380
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->q:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_9

    .line 381
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->q:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v1

    goto :goto_5

    .line 383
    :cond_9
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v1

    :cond_a
    :goto_5
    move-object v12, v1

    .line 387
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->s:Lorg/apache/httpcore/i;

    if-nez v1, :cond_c

    .line 389
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->d:Lorg/apache/httpcore/a/a;

    if-eqz v1, :cond_b

    .line 390
    new-instance v1, Lorg/apache/httpcore/b/d;

    iget-object v3, v0, Lorg/apache/httpcore/b/a/d;->d:Lorg/apache/httpcore/a/a;

    invoke-direct {v1, v3}, Lorg/apache/httpcore/b/d;-><init>(Lorg/apache/httpcore/a/a;)V

    goto :goto_6

    .line 392
    :cond_b
    sget-object v1, Lorg/apache/httpcore/b/d;->a:Lorg/apache/httpcore/b/d;

    :cond_c
    :goto_6
    move-object v14, v1

    .line 396
    iget-object v1, v0, Lorg/apache/httpcore/b/a/d;->t:Lorg/apache/httpcore/c;

    if-nez v1, :cond_d

    .line 398
    sget-object v1, Lorg/apache/httpcore/c;->a:Lorg/apache/httpcore/c;

    :cond_d
    move-object/from16 v16, v1

    .line 401
    new-instance v1, Lorg/apache/httpcore/b/a/a;

    iget v3, v0, Lorg/apache/httpcore/b/a/d;->a:I

    if-lez v3, :cond_e

    iget v2, v0, Lorg/apache/httpcore/b/a/d;->a:I

    move v9, v2

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    iget-object v10, v0, Lorg/apache/httpcore/b/a/d;->b:Ljava/net/InetAddress;

    iget-object v2, v0, Lorg/apache/httpcore/b/a/d;->c:Lorg/apache/httpcore/a/c;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/apache/httpcore/b/a/d;->c:Lorg/apache/httpcore/a/c;

    :goto_8
    move-object v11, v2

    goto :goto_9

    :cond_f
    sget-object v2, Lorg/apache/httpcore/a/c;->a:Lorg/apache/httpcore/a/c;

    goto :goto_8

    :goto_9
    iget-object v15, v0, Lorg/apache/httpcore/b/a/d;->r:Lorg/apache/httpcore/b/a/c;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/apache/httpcore/b/a/a;-><init>(ILjava/net/InetAddress;Lorg/apache/httpcore/a/c;Ljavax/net/ServerSocketFactory;Lorg/apache/httpcore/d/l;Lorg/apache/httpcore/i;Lorg/apache/httpcore/b/a/c;Lorg/apache/httpcore/c;)V

    return-object v1
.end method
