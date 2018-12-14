.class public Lcom/taobao/accs/client/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Lcom/taobao/accs/d; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Z = false

.field private static volatile e:Lcom/taobao/accs/client/a;

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/ActivityManager;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lcom/taobao/accs/a/a$a;

.field private l:Landroid/content/pm/PackageInfo;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/base/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/accs/client/a;->m:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/taobao/accs/client/a;->m:Ljava/util/Map;

    const-string v1, "agooSend"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/accs/client/a;->m:Ljava/util/Map;

    const-string v1, "agooAck"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/accs/client/a;->m:Ljava/util/Map;

    const-string v1, "agooTokenReport"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/client/a;->n:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    .line 81
    :cond_1
    new-instance p1, Lcom/taobao/accs/client/e;

    invoke-direct {p1, p0}, Lcom/taobao/accs/client/e;-><init>(Lcom/taobao/accs/client/a;)V

    invoke-static {p1}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/client/a;
    .locals 2

    .line 59
    sget-object v0, Lcom/taobao/accs/client/a;->e:Lcom/taobao/accs/client/a;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/taobao/accs/client/a;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/taobao/accs/client/a;->e:Lcom/taobao/accs/client/a;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/taobao/accs/client/a;

    invoke-direct {v1, p0}, Lcom/taobao/accs/client/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/client/a;->e:Lcom/taobao/accs/client/a;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 66
    :cond_1
    :goto_0
    sget-object p0, Lcom/taobao/accs/client/a;->e:Lcom/taobao/accs/client/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/g;

    if-nez p1, :cond_1

    return-object v1

    .line 130
    :cond_1
    invoke-interface {p1}, Lcom/taobao/accs/g;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/taobao/accs/a/a$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/taobao/accs/client/a;->k:Lcom/taobao/accs/a/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/taobao/accs/base/a;)V
    .locals 1

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 158
    instance-of v0, p2, Lcom/taobao/accs/d;

    if-eqz v0, :cond_0

    .line 159
    check-cast p2, Lcom/taobao/accs/d;

    sput-object p2, Lcom/taobao/accs/client/a;->b:Lcom/taobao/accs/d;

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/taobao/accs/g;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/taobao/accs/client/a;->j:Ljava/util/Map;

    return-void
.end method

.method public b()Landroid/app/ActivityManager;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/taobao/accs/client/a;->h:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/a;->h:Landroid/app/ActivityManager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->h:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/g;

    if-nez p1, :cond_1

    return-object v1

    .line 141
    :cond_1
    invoke-interface {p1}, Lcom/taobao/accs/g;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroid/net/ConnectivityManager;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/taobao/accs/client/a;->i:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/a;->i:Landroid/net/ConnectivityManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->i:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Lcom/taobao/accs/client/a;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/taobao/accs/base/a;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/taobao/accs/client/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/base/a;

    return-object p1
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/e;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/taobao/accs/client/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/taobao/accs/client/a;->j:Ljava/util/Map;

    return-object v0
.end method

.method public f()Lcom/taobao/accs/a/a$a;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/taobao/accs/client/a;->k:Lcom/taobao/accs/a/a$a;

    return-object v0
.end method

.method public g()Landroid/content/pm/PackageInfo;
    .locals 4

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/client/a;->l:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 231
    sget-object v1, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/client/a;->l:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GlobalClientInfo"

    const-string v3, "getPackageInfo"

    .line 234
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/client/a;->l:Landroid/content/pm/PackageInfo;

    return-object v0
.end method
