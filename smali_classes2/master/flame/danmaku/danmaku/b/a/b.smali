.class public Lmaster/flame/danmaku/danmaku/b/a/b;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/b/a/b$a;,
        Lmaster/flame/danmaku/danmaku/b/a/b$c;,
        Lmaster/flame/danmaku/danmaku/b/a/b$b;,
        Lmaster/flame/danmaku/danmaku/b/a/b$e;,
        Lmaster/flame/danmaku/danmaku/b/a/b$d;,
        Lmaster/flame/danmaku/danmaku/b/a/b$f;
    }
.end annotation


# instance fields
.field private a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

.field private b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

.field private c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

.field private d:Lmaster/flame/danmaku/danmaku/b/a/b$d;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 29
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 31
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 33
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 36
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/b/a/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 74
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a()V

    .line 77
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a()V

    .line 80
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a()V

    .line 83
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a()V

    :cond_3
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p3, 0x0

    .line 67
    invoke-virtual {p1, p2, p3, p3}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;FF)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    invoke-interface {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/b/a/b$d;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 40
    new-instance v1, Lmaster/flame/danmaku/danmaku/b/a/b$a;

    invoke-direct {v1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lmaster/flame/danmaku/danmaku/b/a/b$b;

    invoke-direct {v1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$b;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    :goto_0
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->a:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Lmaster/flame/danmaku/danmaku/b/a/b$a;

    invoke-direct {p1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lmaster/flame/danmaku/danmaku/b/a/b$b;

    invoke-direct {p1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$b;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    :goto_1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->b:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 42
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-nez p1, :cond_2

    .line 43
    new-instance p1, Lmaster/flame/danmaku/danmaku/b/a/b$c;

    invoke-direct {p1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$c;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->c:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    .line 45
    :cond_2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    if-nez p1, :cond_3

    .line 46
    new-instance p1, Lmaster/flame/danmaku/danmaku/b/a/b$a;

    invoke-direct {p1, v0}, Lmaster/flame/danmaku/danmaku/b/a/b$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b;->d:Lmaster/flame/danmaku/danmaku/b/a/b$d;

    :cond_3
    return-void
.end method

.method public b()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/b/a/b;->a()V

    return-void
.end method
