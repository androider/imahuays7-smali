.class public Lcom/flurry/sdk/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ca"

.field private static b:Lcom/flurry/sdk/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ca;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ca;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ca;->b:Lcom/flurry/sdk/ca;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/flurry/sdk/ca;

    invoke-direct {v1}, Lcom/flurry/sdk/ca;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ca;->b:Lcom/flurry/sdk/ca;

    .line 20
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ca;->b:Lcom/flurry/sdk/ca;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/flurry/sdk/ca;->b:Lcom/flurry/sdk/ca;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 1103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
