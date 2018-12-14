.class public final Lcom/flurry/sdk/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "cp"

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/flurry/sdk/cp;

.field private static e:Z

.field private static g:Ljava/lang/String;


# instance fields
.field private d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private f:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FlurryFullscreenTakeoverActivity"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "FlurryBrowserActivity"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/flurry/sdk/cp;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 1062
    iget-object v1, p0, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_0

    .line 1063
    new-instance v1, Lcom/flurry/sdk/cp$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cp$1;-><init>(Lcom/flurry/sdk/cp;)V

    iput-object v1, p0, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1135
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    if-nez v1, :cond_1

    .line 1139
    new-instance v1, Lcom/flurry/sdk/cp$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cp$2;-><init>(Lcom/flurry/sdk/cp;)V

    iput-object v1, p0, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    .line 1155
    iget-object v1, p0, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/cp;
    .locals 2

    const-class v0, Lcom/flurry/sdk/cp;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/flurry/sdk/cp;

    invoke-direct {v1}, Lcom/flurry/sdk/cp;-><init>()V

    sput-object v1, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    .line 49
    :cond_0
    sget-object v1, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    sput-object p0, Lcom/flurry/sdk/cp;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Z)V
    .locals 1

    .line 3182
    sput-boolean p0, Lcom/flurry/sdk/cp;->e:Z

    .line 3183
    invoke-static {p0}, Lcom/flurry/sdk/cl;->a(Z)V

    .line 3189
    new-instance p0, Lcom/flurry/sdk/cq;

    sget-boolean v0, Lcom/flurry/sdk/cp;->e:Z

    if-eqz v0, :cond_0

    .line 3190
    sget v0, Lcom/flurry/sdk/cq$a;->a:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/flurry/sdk/cq$a;->b:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cq;-><init>(I)V

    .line 4023
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cv;)V

    return-void
.end method

.method public static declared-synchronized b()V
    .locals 6

    const-class v0, Lcom/flurry/sdk/cp;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    sget-object v1, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    .line 2160
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v3

    .line 3103
    iget-object v3, v3, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 2162
    iget-object v4, v1, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v4, :cond_0

    .line 2163
    move-object v4, v3

    check-cast v4, Landroid/app/Application;

    iget-object v5, v1, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v4, v5}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2164
    iput-object v2, v1, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2167
    :cond_0
    iget-object v4, v1, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    if-eqz v4, :cond_1

    .line 2168
    iget-object v4, v1, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 2169
    iput-object v2, v1, Lcom/flurry/sdk/cp;->f:Landroid/content/ComponentCallbacks2;

    .line 57
    :cond_1
    sput-object v2, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    throw v1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/cp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/cp;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/flurry/sdk/cp;->e:Z

    return v0
.end method

.method static synthetic h()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/cp;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/flurry/sdk/cp;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/cp;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
