.class public Lmaster/flame/danmaku/danmaku/loader/a/c;
.super Ljava/lang/Object;
.source "DanmakuLoaderFactory.java"


# static fields
.field public static a:Ljava/lang/String; = "bili"

.field public static b:Ljava/lang/String; = "acfun"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/a;
    .locals 1

    .line 27
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/a/b;->b()Lmaster/flame/danmaku/danmaku/loader/a/b;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 30
    invoke-static {}, Lmaster/flame/danmaku/danmaku/loader/a/a;->b()Lmaster/flame/danmaku/danmaku/loader/a;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
