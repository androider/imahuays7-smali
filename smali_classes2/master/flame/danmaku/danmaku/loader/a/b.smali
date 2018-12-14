.class public Lmaster/flame/danmaku/danmaku/loader/a/b;
.super Ljava/lang/Object;
.source "BiliDanmakuLoader.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/loader/a;


# static fields
.field private static a:Lmaster/flame/danmaku/danmaku/loader/a/b;


# instance fields
.field private b:Lmaster/flame/danmaku/danmaku/a/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lmaster/flame/danmaku/danmaku/loader/a/b;
    .locals 1

    .line 36
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/b;->a:Lmaster/flame/danmaku/danmaku/loader/a/b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/a/b;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/loader/a/b;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/loader/a/b;->a:Lmaster/flame/danmaku/danmaku/loader/a/b;

    .line 39
    :cond_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/b;->a:Lmaster/flame/danmaku/danmaku/loader/a/b;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Lmaster/flame/danmaku/danmaku/a/b;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/loader/a/b;->c()Lmaster/flame/danmaku/danmaku/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1

    .line 51
    new-instance v0, Lmaster/flame/danmaku/danmaku/a/a/a;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/a/a/a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/a/b;->b:Lmaster/flame/danmaku/danmaku/a/a/a;

    return-void
.end method

.method public c()Lmaster/flame/danmaku/danmaku/a/a/a;
    .locals 1

    .line 56
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/a/b;->b:Lmaster/flame/danmaku/danmaku/a/a/a;

    return-object v0
.end method
