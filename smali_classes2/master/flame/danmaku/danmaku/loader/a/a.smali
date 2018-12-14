.class public Lmaster/flame/danmaku/danmaku/loader/a/a;
.super Ljava/lang/Object;
.source "AcFunDanmakuLoader.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/loader/a;


# static fields
.field private static volatile a:Lmaster/flame/danmaku/danmaku/loader/a/a;


# instance fields
.field private b:Lmaster/flame/danmaku/danmaku/a/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lmaster/flame/danmaku/danmaku/loader/a;
    .locals 2

    .line 20
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/a;->a:Lmaster/flame/danmaku/danmaku/loader/a/a;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lmaster/flame/danmaku/danmaku/loader/a/a;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lmaster/flame/danmaku/danmaku/loader/a/a;->a:Lmaster/flame/danmaku/danmaku/loader/a/a;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lmaster/flame/danmaku/danmaku/loader/a/a;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/loader/a/a;-><init>()V

    sput-object v1, Lmaster/flame/danmaku/danmaku/loader/a/a;->a:Lmaster/flame/danmaku/danmaku/loader/a/a;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/a;->a:Lmaster/flame/danmaku/danmaku/loader/a/a;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Lmaster/flame/danmaku/danmaku/a/b;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/loader/a/a;->c()Lmaster/flame/danmaku/danmaku/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .line 46
    :try_start_0
    new-instance v0, Lmaster/flame/danmaku/danmaku/a/a/b;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/a/a/b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/a/a;->b:Lmaster/flame/danmaku/danmaku/a/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Lmaster/flame/danmaku/danmaku/a/a/b;
    .locals 1

    .line 31
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/loader/a/a;->b:Lmaster/flame/danmaku/danmaku/a/a/b;

    return-object v0
.end method
