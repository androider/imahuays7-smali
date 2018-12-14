.class public Lcom/alibaba/sdk/android/httpdns/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/c;


# static fields
.field static a:Lcom/alibaba/sdk/android/httpdns/b; = null

.field private static c:Ljava/util/concurrent/ExecutorService; = null

.field private static d:Lcom/alibaba/sdk/android/httpdns/e; = null

.field private static e:Lcom/alibaba/sdk/android/httpdns/a; = null

.field private static f:Z = true


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/k;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/k;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e;->a()Lcom/alibaba/sdk/android/httpdns/e;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/b;->d:Lcom/alibaba/sdk/android/httpdns/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/b;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/c;
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.1.3.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {p0, v2, v1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/o;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/p;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/u;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/httpdns/r;->a(Landroid/content/Context;)V

    new-instance p0, Lcom/alibaba/sdk/android/httpdns/b;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/b;-><init>()V

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    return-object p0
.end method

.method static declared-synchronized b(Z)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/b;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/b;->f:Z

    sget-boolean p0, Lcom/alibaba/sdk/android/httpdns/b;->f:Z

    if-nez p0, :cond_0

    const-string p0, "httpdns service disabled"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/b;->f:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns service turned off"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/b;->d:Lcom/alibaba/sdk/android/httpdns/e;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/httpdns/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/p;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v3, v1, v4}, Lcom/alibaba/sdk/android/httpdns/p;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/b;->b:Z

    return-void
.end method
