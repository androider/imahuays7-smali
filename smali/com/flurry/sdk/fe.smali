.class public Lcom/flurry/sdk/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "fe"

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/flurry/sdk/fe;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/flurry/sdk/fe;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 28
    :cond_0
    :try_start_1
    const-class v1, Lcom/flurry/sdk/br;

    invoke-static {v1}, Lcom/flurry/sdk/df;->a(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x3

    .line 32
    :try_start_2
    const-class v2, Lcom/flurry/sdk/y;

    .line 33
    invoke-static {v2}, Lcom/flurry/sdk/df;->a(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 35
    :catch_0
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v3, "Analytics module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :goto_0
    :try_start_4
    const-class v2, Lcom/flurry/sdk/ew;

    .line 41
    invoke-static {v2}, Lcom/flurry/sdk/df;->a(Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 43
    :catch_1
    :try_start_5
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v3, "Crash module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    const-string v2, "com.flurry.android.bridge.FlurryBridgeModule"

    .line 49
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/flurry/sdk/df;->a(Ljava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 52
    :catch_2
    :try_start_7
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v3, "Ads module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x1

    .line 55
    sput-boolean v1, Lcom/flurry/sdk/fe;->b:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/fe;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/flurry/sdk/fe;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 63
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/df;->a()V

    const/4 v1, 0x0

    .line 68
    sput-boolean v1, Lcom/flurry/sdk/fe;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    throw v1
.end method
