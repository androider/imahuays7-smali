.class public Lmaster/flame/danmaku/danmaku/model/l$a;
.super Ljava/lang/Object;
.source "IDanmakus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/l$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 118
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/l$a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    invoke-static {p1, p2}, Lmaster/flame/danmaku/danmaku/c/a;->b(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/l$a;->a:Z

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 104
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/l$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method
