.class Lcom/alibaba/sdk/android/httpdns/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/e;

.field private static b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/g;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/e;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/e;->a:Lcom/alibaba/sdk/android/httpdns/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/e;->c:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DBUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/e;->d:Landroid/os/Handler;

    return-void
.end method

.method static a()Lcom/alibaba/sdk/android/httpdns/e;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->a:Lcom/alibaba/sdk/android/httpdns/e;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/e;->f()V

    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/httpdns/a/e;)Z
    .locals 6

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/a/c;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v4, v2, v0

    const-wide/32 v0, 0x93a80

    cmp-long p1, v4, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .locals 7

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/httpdns/a/e;

    invoke-direct {p0, v2}, Lcom/alibaba/sdk/android/httpdns/e;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/alibaba/sdk/android/httpdns/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/httpdns/a/e;->d:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, v2, Lcom/alibaba/sdk/android/httpdns/a/e;->b:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/g;

    invoke-direct {v5, v2}, Lcom/alibaba/sdk/android/httpdns/g;-><init>(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/g;->a()Lcom/alibaba/sdk/android/httpdns/a/e;

    move-result-object p1

    iget-object p2, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->c:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b()V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/e$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/httpdns/e$1;-><init>(Lcom/alibaba/sdk/android/httpdns/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->c:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c()I
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->c:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method d()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e;->c:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    return-void
.end method

.method e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
