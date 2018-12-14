.class public Lmaster/flame/danmaku/danmaku/model/l$e;
.super Lmaster/flame/danmaku/danmaku/model/l$a;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/l$a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 146
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/l$e;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result p1

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 138
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/l$e;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method
