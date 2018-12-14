.class public Lmaster/flame/danmaku/a/b$m;
.super Lmaster/flame/danmaku/a/b$k;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/a/b$k<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lmaster/flame/danmaku/a/b$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 312
    iget-object p2, p0, Lmaster/flame/danmaku/a/b$m;->a:Ljava/util/List;

    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 314
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    :cond_1
    return p2
.end method
