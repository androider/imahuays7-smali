.class public Lcom/taobao/accs/client/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Lcom/taobao/accs/h;

.field public static g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile h:Lcom/taobao/accs/client/c;

.field private static i:Landroid/content/Context;


# instance fields
.field private j:Landroid/app/ActivityManager;

.field private k:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/c;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/client/c;->i:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/client/c;
    .locals 2

    .line 39
    sget-object v0, Lcom/taobao/accs/client/c;->h:Lcom/taobao/accs/client/c;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/taobao/accs/client/c;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/taobao/accs/client/c;->h:Lcom/taobao/accs/client/c;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/taobao/accs/client/c;

    invoke-direct {v1, p0}, Lcom/taobao/accs/client/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/client/c;->h:Lcom/taobao/accs/client/c;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/taobao/accs/client/c;->h:Lcom/taobao/accs/client/c;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 81
    sget-object v0, Lcom/taobao/accs/client/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".TaobaoIntentService"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 84
    :cond_0
    sget-object p0, Lcom/taobao/accs/client/c;->b:Ljava/lang/String;

    :goto_0
    const-string v0, "AdapterGlobalClientInfo"

    const-string v1, "getAgooCustomServiceName"

    const/4 v2, 0x2

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static c()Z
    .locals 1

    .line 91
    sget-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Landroid/app/ActivityManager;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/taobao/accs/client/c;->j:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/taobao/accs/client/c;->i:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/c;->j:Landroid/app/ActivityManager;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/c;->j:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public b()Landroid/net/ConnectivityManager;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/taobao/accs/client/c;->k:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/taobao/accs/client/c;->i:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/c;->k:Landroid/net/ConnectivityManager;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/c;->k:Landroid/net/ConnectivityManager;

    return-object v0
.end method
