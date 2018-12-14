.class public Lcom/taobao/accs/utl/d;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Lanet/channel/statist/a;

    invoke-direct {v0}, Lanet/channel/statist/a;-><init>()V

    .line 15
    iput-object p0, v0, Lanet/channel/statist/a;->e:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lanet/channel/statist/a;->b:Ljava/lang/String;

    const/4 p0, 0x1

    .line 18
    iput-boolean p0, v0, Lanet/channel/statist/a;->a:Z

    .line 19
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/b/b;->a(Lanet/channel/statist/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .line 35
    new-instance v0, Lanet/channel/statist/b;

    invoke-direct {v0}, Lanet/channel/statist/b;-><init>()V

    .line 36
    iput-object p0, v0, Lanet/channel/statist/b;->c:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lanet/channel/statist/b;->d:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lanet/channel/statist/b;->a:Ljava/lang/String;

    .line 39
    iput-wide p3, v0, Lanet/channel/statist/b;->b:D

    .line 40
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/b/b;->a(Lanet/channel/statist/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Lanet/channel/statist/a;

    invoke-direct {v0}, Lanet/channel/statist/a;-><init>()V

    .line 25
    iput-object p0, v0, Lanet/channel/statist/a;->e:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lanet/channel/statist/a;->b:Ljava/lang/String;

    .line 28
    iput-object p3, v0, Lanet/channel/statist/a;->c:Ljava/lang/String;

    .line 29
    iput-object p4, v0, Lanet/channel/statist/a;->d:Ljava/lang/String;

    const/4 p0, 0x0

    .line 30
    iput-boolean p0, v0, Lanet/channel/statist/a;->a:Z

    .line 31
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/b/b;->a(Lanet/channel/statist/a;)V

    return-void
.end method
