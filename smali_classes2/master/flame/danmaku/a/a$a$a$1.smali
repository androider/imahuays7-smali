.class Lmaster/flame/danmaku/a/a$a$a$1;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/a$a$a;->f()V
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
.field final synthetic a:Lmaster/flame/danmaku/a/a$a$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/a$a$a;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 699
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$a$1;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 9

    .line 702
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/a/a$a$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a$a$a;->b(Lmaster/flame/danmaku/a/a$a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v8, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lmaster/flame/danmaku/a/b;->a(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 708
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->j()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 711
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    .line 714
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 715
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a$1;->a:Lmaster/flame/danmaku/a/a$a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->b(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method
