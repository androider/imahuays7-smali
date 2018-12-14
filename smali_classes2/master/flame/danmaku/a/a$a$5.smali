.class Lmaster/flame/danmaku/a/a$a$5;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lmaster/flame/danmaku/a/a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a;IZ)V
    .locals 0

    .line 987
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$5;->c:Lmaster/flame/danmaku/a/a$a;

    iput p2, p0, Lmaster/flame/danmaku/a/a$a$5;->a:I

    iput-boolean p3, p0, Lmaster/flame/danmaku/a/a$a$5;->b:Z

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 987
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$5;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 3

    .line 990
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$5;->c:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 993
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$5;->c:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a;->g(Lmaster/flame/danmaku/a/a$a;)I

    move-result v0

    iget v2, p0, Lmaster/flame/danmaku/a/a$a$5;->a:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$5;->c:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v2}, Lmaster/flame/danmaku/a/a$a;->h(Lmaster/flame/danmaku/a/a$a;)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 994
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 997
    :cond_1
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/a$a$5;->b:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 995
    :cond_3
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$5;->c:Lmaster/flame/danmaku/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lmaster/flame/danmaku/a/a$a;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_4
    return v1
.end method
