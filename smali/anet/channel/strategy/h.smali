.class public Lanet/channel/strategy/h;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/strategy/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/strategy/e;
    .locals 2

    .line 14
    sget-object v0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/e;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lanet/channel/strategy/h;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/e;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lanet/channel/strategy/u;

    invoke-direct {v1}, Lanet/channel/strategy/u;-><init>()V

    sput-object v1, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/e;

    .line 19
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/e;

    return-object v0
.end method
