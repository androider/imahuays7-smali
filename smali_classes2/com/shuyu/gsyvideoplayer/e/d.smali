.class public Lcom/shuyu/gsyvideoplayer/e/d;
.super Ljava/lang/Object;
.source "PlayerFactory.java"


# direct methods
.method public static a(I)Lcom/shuyu/gsyvideoplayer/e/b;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 19
    new-instance p0, Lcom/shuyu/gsyvideoplayer/e/c;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/e/c;-><init>()V

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcom/shuyu/gsyvideoplayer/e/e;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/e/e;-><init>()V

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lcom/shuyu/gsyvideoplayer/e/a;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/e/a;-><init>()V

    return-object p0
.end method
