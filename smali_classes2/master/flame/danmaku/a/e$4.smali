.class Lmaster/flame/danmaku/a/e$4;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/a/e;->b(J)Lmaster/flame/danmaku/danmaku/model/l;
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
.field final synthetic a:Lmaster/flame/danmaku/danmaku/model/l;

.field final synthetic b:Lmaster/flame/danmaku/a/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/a/e;Lmaster/flame/danmaku/danmaku/model/l;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lmaster/flame/danmaku/a/e$4;->b:Lmaster/flame/danmaku/a/e;

    iput-object p2, p0, Lmaster/flame/danmaku/a/e$4;->a:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 240
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/e$4;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 243
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lmaster/flame/danmaku/a/e$4;->a:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
