.class public Lanet/channel/g/e;
.super Lanet/channel/Session;
.source "Taobao"


# instance fields
.field private s:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/b;)V
    .locals 1

    .line 36
    invoke-virtual {p2}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/entity/ConnType;)V

    .line 37
    iget-object p1, p0, Lanet/channel/g/e;->j:Lanet/channel/strategy/c;

    if-nez p1, :cond_1

    .line 38
    iget-object p1, p0, Lanet/channel/g/e;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lanet/channel/g/e;->c:Ljava/lang/String;

    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    goto :goto_0

    :cond_0
    sget-object p1, Lanet/channel/entity/ConnType;->a:Lanet/channel/entity/ConnType;

    :goto_0
    iput-object p1, p0, Lanet/channel/g/e;->i:Lanet/channel/entity/ConnType;

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lanet/channel/j;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lanet/channel/g/e;->i:Lanet/channel/entity/ConnType;

    sget-object p2, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    invoke-virtual {p1, p2}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    new-instance p1, Lanet/channel/h/p;

    iget-object p2, p0, Lanet/channel/g/e;->d:Ljava/lang/String;

    invoke-direct {p1, p2}, Lanet/channel/h/p;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lanet/channel/g/e;->s:Ljavax/net/ssl/SSLSocketFactory;

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lanet/channel/g/e;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/e;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/g/e;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/e;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    return-void
.end method

.method static synthetic b(Lanet/channel/g/e;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/e;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/request/b;
    .locals 7

    .line 106
    sget-object v0, Lanet/channel/request/c;->a:Lanet/channel/request/c;

    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    goto :goto_0

    :cond_0
    new-instance v1, Lanet/channel/statist/RequestStatistic;

    iget-object v2, p0, Lanet/channel/g/e;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lanet/channel/g/e;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v1, v2}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 110
    iget-wide v2, v1, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->start:J

    :cond_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_2

    .line 121
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lanet/channel/request/d;->l()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lanet/channel/g/e;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p1}, Lanet/channel/request/d;->a()Lanet/channel/request/d$a;

    move-result-object p1

    iget-object v2, p0, Lanet/channel/g/e;->s:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v2}, Lanet/channel/request/d$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/request/d$a;->a()Lanet/channel/request/d;

    move-result-object p1

    const-string v2, "sni"

    .line 123
    iput-object v2, v1, Lanet/channel/statist/RequestStatistic;->isSni:Ljava/lang/String;

    .line 125
    :cond_3
    iget-object v2, p0, Lanet/channel/g/e;->e:Ljava/lang/String;

    iget v3, p0, Lanet/channel/g/e;->f:I

    invoke-virtual {p1, v2, v3}, Lanet/channel/request/d;->a(Ljava/lang/String;I)V

    .line 126
    iget-object v2, p0, Lanet/channel/g/e;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->c()Z

    move-result v2

    invoke-virtual {p1, v2}, Lanet/channel/request/d;->a(Z)V

    .line 129
    new-instance v2, Lanet/channel/request/c;

    new-instance v3, Lanet/channel/g/g;

    invoke-direct {v3, p0, p1, v1, p2}, Lanet/channel/g/g;-><init>(Lanet/channel/g/e;Lanet/channel/request/d;Lanet/channel/statist/RequestStatistic;Lanet/channel/f;)V

    invoke-static {p1}, Lanet/channel/h/m;->a(Lanet/channel/request/d;)I

    move-result v4

    invoke-static {v3, v4}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lanet/channel/request/c;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_4

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x65

    invoke-static {v2, p1}, Lanet/channel/h/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    const/16 p1, -0x66

    .line 116
    invoke-static {p1}, Lanet/channel/h/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2, v1}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_6
    return-object v0
.end method

.method public a(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lanet/channel/g/e;->q:Z

    .line 92
    invoke-virtual {p0}, Lanet/channel/g/e;->c()V

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "awcn.HttpSession"

    const-string v3, "HttpSession connect"

    const/4 v4, 0x2

    .line 52
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Lanet/channel/g/e;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v0, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v2, Lanet/channel/request/d$a;

    invoke-direct {v2}, Lanet/channel/request/d$a;-><init>()V

    iget-object v3, p0, Lanet/channel/g/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lanet/channel/request/d$a;->a(Ljava/lang/String;)Lanet/channel/request/d$a;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/g/e;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lanet/channel/request/d$a;->b(Ljava/lang/String;)Lanet/channel/request/d$a;

    move-result-object v2

    iget v3, p0, Lanet/channel/g/e;->o:I

    int-to-float v3, v3

    invoke-static {}, Lanet/channel/h/h;->b()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lanet/channel/request/d$a;->c(I)Lanet/channel/request/d$a;

    move-result-object v2

    iget v3, p0, Lanet/channel/g/e;->p:I

    int-to-float v3, v3

    invoke-static {}, Lanet/channel/h/h;->b()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lanet/channel/request/d$a;->b(I)Lanet/channel/request/d$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lanet/channel/request/d$a;->a(Z)Lanet/channel/request/d$a;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lanet/channel/g/e;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lanet/channel/g/e;->s:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Lanet/channel/request/d$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/d$a;

    .line 62
    :cond_0
    invoke-virtual {v2}, Lanet/channel/request/d$a;->a()Lanet/channel/request/d;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lanet/channel/g/e;->e:Ljava/lang/String;

    iget v4, p0, Lanet/channel/g/e;->f:I

    invoke-virtual {v2, v3, v4}, Lanet/channel/request/d;->a(Ljava/lang/String;I)V

    .line 64
    new-instance v3, Lanet/channel/g/f;

    invoke-direct {v3, p0, v2}, Lanet/channel/g/f;-><init>(Lanet/channel/g/e;Lanet/channel/request/d;)V

    const/4 v2, 0x6

    invoke-static {v3, v2}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "awcn.HttpSession"

    const-string v4, "HTTP connect fail."

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v2, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 86
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/g/e;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    return-void
.end method

.method protected d()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lanet/channel/g/e;->k:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
