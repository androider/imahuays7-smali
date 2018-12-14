.class public Lanet/channel/request/d$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lanet/channel/h/k;

.field private b:Lanet/channel/h/k;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lanet/channel/request/BodyEntry;

.field private h:Z

.field private i:I

.field private j:Ljavax/net/ssl/HostnameVerifier;

.field private k:Ljavax/net/ssl/SSLSocketFactory;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Lanet/channel/statist/RequestStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 258
    iput-object v0, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/d$a;->d:Ljava/util/Map;

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lanet/channel/request/d$a;->h:Z

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lanet/channel/request/d$a;->i:I

    .line 269
    iput v0, p0, Lanet/channel/request/d$a;->n:I

    .line 270
    iput v0, p0, Lanet/channel/request/d$a;->o:I

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lanet/channel/request/d$a;->p:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method static synthetic a(Lanet/channel/request/d$a;I)I
    .locals 0

    .line 255
    iput p1, p0, Lanet/channel/request/d$a;->i:I

    return p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Lanet/channel/h/k;)Lanet/channel/h/k;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->a:Lanet/channel/h/k;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->p:Lanet/channel/statist/RequestStatistic;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/d$a;Z)Z
    .locals 0

    .line 255
    iput-boolean p1, p0, Lanet/channel/request/d$a;->h:Z

    return p1
.end method

.method static synthetic b(Lanet/channel/request/d$a;I)I
    .locals 0

    .line 255
    iput p1, p0, Lanet/channel/request/d$a;->n:I

    return p1
.end method

.method static synthetic b(Lanet/channel/request/d$a;Lanet/channel/h/k;)Lanet/channel/h/k;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->b:Lanet/channel/h/k;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/d$a;)Ljava/util/Map;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lanet/channel/request/d$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lanet/channel/request/d$a;I)I
    .locals 0

    .line 255
    iput p1, p0, Lanet/channel/request/d$a;->o:I

    return p1
.end method

.method static synthetic c(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lanet/channel/request/d$a;)Ljava/util/Map;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lanet/channel/request/d$a;)Lanet/channel/request/BodyEntry;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    return-object p0
.end method

.method static synthetic d(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 255
    iput-object p1, p0, Lanet/channel/request/d$a;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lanet/channel/request/d$a;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lanet/channel/request/d$a;)Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lanet/channel/request/d$a;->h:Z

    return p0
.end method

.method static synthetic g(Lanet/channel/request/d$a;)I
    .locals 0

    .line 255
    iget p0, p0, Lanet/channel/request/d$a;->i:I

    return p0
.end method

.method static synthetic h(Lanet/channel/request/d$a;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method static synthetic i(Lanet/channel/request/d$a;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic j(Lanet/channel/request/d$a;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lanet/channel/request/d$a;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lanet/channel/request/d$a;)I
    .locals 0

    .line 255
    iget p0, p0, Lanet/channel/request/d$a;->n:I

    return p0
.end method

.method static synthetic m(Lanet/channel/request/d$a;)I
    .locals 0

    .line 255
    iget p0, p0, Lanet/channel/request/d$a;->o:I

    return p0
.end method

.method static synthetic n(Lanet/channel/request/d$a;)Lanet/channel/h/k;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->a:Lanet/channel/h/k;

    return-object p0
.end method

.method static synthetic o(Lanet/channel/request/d$a;)Lanet/channel/h/k;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->b:Lanet/channel/h/k;

    return-object p0
.end method

.method static synthetic p(Lanet/channel/request/d$a;)Lanet/channel/statist/RequestStatistic;
    .locals 0

    .line 255
    iget-object p0, p0, Lanet/channel/request/d$a;->p:Lanet/channel/statist/RequestStatistic;

    return-object p0
.end method


# virtual methods
.method public a(I)Lanet/channel/request/d$a;
    .locals 0

    .line 360
    iput p1, p0, Lanet/channel/request/d$a;->i:I

    return-object p0
.end method

.method public a(Lanet/channel/h/k;)Lanet/channel/request/d$a;
    .locals 0

    .line 277
    iput-object p1, p0, Lanet/channel/request/d$a;->a:Lanet/channel/h/k;

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lanet/channel/request/d$a;->b:Lanet/channel/h/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lanet/channel/request/d$a;
    .locals 3

    .line 283
    invoke-static {p1}, Lanet/channel/h/k;->a(Ljava/lang/String;)Lanet/channel/h/k;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d$a;->a:Lanet/channel/h/k;

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lanet/channel/request/d$a;->b:Lanet/channel/h/k;

    .line 285
    iget-object v0, p0, Lanet/channel/request/d$a;->a:Lanet/channel/h/k;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toURL is invalid! toURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/d$a;
    .locals 1

    .line 324
    iget-object v0, p0, Lanet/channel/request/d$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/d$a;
    .locals 0

    .line 370
    iput-object p1, p0, Lanet/channel/request/d$a;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public a(Z)Lanet/channel/request/d$a;
    .locals 0

    .line 355
    iput-boolean p1, p0, Lanet/channel/request/d$a;->h:Z

    return-object p0
.end method

.method public a()Lanet/channel/request/d;
    .locals 5

    .line 401
    iget-object v0, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/d$a;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/d$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "awcn.Request"

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must have a request body"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/d$b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "awcn.Request"

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanet/channel/request/d$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should not have a request body"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iput-object v2, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    .line 411
    :cond_1
    iget-object v0, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Content-Type"

    .line 412
    iget-object v1, p0, Lanet/channel/request/d$a;->g:Lanet/channel/request/BodyEntry;

    invoke-interface {v1}, Lanet/channel/request/BodyEntry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lanet/channel/request/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/d$a;

    .line 415
    :cond_2
    new-instance v0, Lanet/channel/request/d;

    invoke-direct {v0, p0, v2}, Lanet/channel/request/d;-><init>(Lanet/channel/request/d$a;Lanet/channel/request/d$1;)V

    return-object v0
.end method

.method public b(I)Lanet/channel/request/d$a;
    .locals 0

    .line 385
    iput p1, p0, Lanet/channel/request/d$a;->o:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lanet/channel/request/d$a;
    .locals 0

    .line 380
    iput-object p1, p0, Lanet/channel/request/d$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lanet/channel/request/d$a;
    .locals 0

    .line 390
    iput p1, p0, Lanet/channel/request/d$a;->n:I

    return-object p0
.end method
