.class public Lcom/shuyu/gsyvideoplayer/b/a;
.super Ljava/lang/Object;
.source "CacheFactory.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)Lcom/shuyu/gsyvideoplayer/b/c;
    .locals 2

    .line 29
    sget v0, Lcom/shuyu/gsyvideoplayer/b/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    sget p0, Lcom/shuyu/gsyvideoplayer/b/a;->a:I

    if-nez p0, :cond_2

    .line 36
    new-instance p0, Lcom/shuyu/gsyvideoplayer/b/b;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/b/b;-><init>()V

    return-object p0

    .line 41
    :cond_2
    :goto_0
    new-instance p0, Lcom/shuyu/gsyvideoplayer/b/d;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/b/d;-><init>()V

    return-object p0
.end method
