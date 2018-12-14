.class public Lcom/flurry/sdk/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/br;
    .locals 3

    const-class v0, Lcom/flurry/sdk/br;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    const-class v2, Lcom/flurry/sdk/br;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Class;)Lcom/flurry/sdk/dg;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ci;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1111
    iget-wide v0, v0, Lcom/flurry/sdk/ci;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static c()Lcom/flurry/sdk/ci;
    .locals 2

    .line 76
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2084
    :cond_0
    const-class v1, Lcom/flurry/sdk/ci;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ec;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    return-object v0
.end method

.method public static d()J
    .locals 2

    .line 90
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2115
    iget-wide v0, v0, Lcom/flurry/sdk/ci;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static e()J
    .locals 2

    .line 101
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2119
    iget-wide v0, v0, Lcom/flurry/sdk/ci;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static f()J
    .locals 2

    .line 112
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    iget-wide v0, v0, Lcom/flurry/sdk/ci;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static g()J
    .locals 2

    .line 123
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static h()J
    .locals 2

    .line 134
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2127
    iget-wide v0, v0, Lcom/flurry/sdk/ci;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/flurry/sdk/br;->c()Lcom/flurry/sdk/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l()I
    .locals 1

    .line 192
    invoke-static {}, Lcom/flurry/sdk/bz;->a()Lcom/flurry/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bz;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/flurry/sdk/ch;->b()V

    const/4 v0, 0x0

    .line 1021
    sput-object v0, Lcom/flurry/sdk/bw;->a:Lcom/flurry/sdk/bw;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/cc;->b()V

    .line 53
    invoke-static {}, Lcom/flurry/sdk/bt;->b()V

    .line 54
    invoke-static {}, Lcom/flurry/sdk/bx;->b()V

    .line 55
    invoke-static {}, Lcom/flurry/sdk/ca;->b()V

    .line 56
    invoke-static {}, Lcom/flurry/sdk/bz;->b()V

    .line 57
    invoke-static {}, Lcom/flurry/sdk/cn;->b()V

    .line 58
    invoke-static {}, Lcom/flurry/sdk/eh;->b()V

    .line 59
    invoke-static {}, Lcom/flurry/sdk/cx;->b()V

    .line 61
    const-class v0, Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ec;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 32
    const-class p1, Lcom/flurry/sdk/ci;

    invoke-static {p1}, Lcom/flurry/sdk/ec;->a(Ljava/lang/Class;)V

    .line 35
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    .line 36
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    .line 37
    invoke-static {}, Lcom/flurry/sdk/cn;->a()Lcom/flurry/sdk/cn;

    .line 38
    invoke-static {}, Lcom/flurry/sdk/bz;->a()Lcom/flurry/sdk/bz;

    .line 39
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    .line 40
    invoke-static {}, Lcom/flurry/sdk/ca;->a()Lcom/flurry/sdk/ca;

    .line 41
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/bw;->a()Lcom/flurry/sdk/bw;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    return-void
.end method
