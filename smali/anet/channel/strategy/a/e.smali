.class public Lanet/channel/strategy/a/e;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static volatile a:D

.field public static volatile b:D

.field private static volatile c:Landroid/content/Context;

.field private static volatile d:I

.field private static volatile e:J

.field private static f:Lanet/channel/strategy/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 6

    .line 41
    sget v0, Lanet/channel/strategy/a/e;->d:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lanet/channel/strategy/a/e;->e:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 42
    sput-wide v0, Lanet/channel/strategy/a/e;->e:J

    const/4 v0, 0x0

    .line 43
    sput v0, Lanet/channel/strategy/a/e;->d:I

    .line 45
    :cond_0
    sget v0, Lanet/channel/strategy/a/e;->d:I

    return v0
.end method

.method public static a(II)V
    .locals 5

    const-string v0, "awcn.AmdcRuntimeInfo"

    const-string v1, "set amdc limit"

    const/4 v2, 0x4

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "level"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "time"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget v0, Lanet/channel/strategy/a/e;->d:I

    if-eq v0, p0, :cond_0

    .line 35
    sput p0, Lanet/channel/strategy/a/e;->d:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v2, 0x3e8

    mul-long p0, p0, v2

    add-long v2, v0, p0

    sput-wide v2, Lanet/channel/strategy/a/e;->e:J

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 49
    sput-object p0, Lanet/channel/strategy/a/e;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Lanet/channel/strategy/a/d;)V
    .locals 0

    .line 57
    sput-object p0, Lanet/channel/strategy/a/e;->f:Lanet/channel/strategy/a/d;

    return-void
.end method

.method public static b()Lanet/channel/strategy/a/d;
    .locals 1

    .line 61
    sget-object v0, Lanet/channel/strategy/a/e;->f:Lanet/channel/strategy/a/d;

    return-object v0
.end method
