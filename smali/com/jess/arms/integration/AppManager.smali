.class public final Lcom/jess/arms/integration/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/integration/AppManager$HandleListener;
    }
.end annotation


# static fields
.field public static final IS_NOT_ADD_ACTIVITY_LIST:Ljava/lang/String; = "is_not_add_activity_list"

.field private static volatile sAppManager:Lcom/jess/arms/integration/AppManager;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mCurrentActivity:Landroid/app/Activity;

.field private mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jess/arms/integration/AppManager;)Landroid/app/Application;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/jess/arms/integration/AppManager;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method public static getAppManager()Lcom/jess/arms/integration/AppManager;
    .locals 2

    .line 83
    sget-object v0, Lcom/jess/arms/integration/AppManager;->sAppManager:Lcom/jess/arms/integration/AppManager;

    if-nez v0, :cond_1

    .line 84
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/jess/arms/integration/AppManager;->sAppManager:Lcom/jess/arms/integration/AppManager;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/jess/arms/integration/AppManager;

    invoke-direct {v1}, Lcom/jess/arms/integration/AppManager;-><init>()V

    sput-object v1, Lcom/jess/arms/integration/AppManager;->sAppManager:Lcom/jess/arms/integration/AppManager;

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Lcom/jess/arms/integration/AppManager;->sAppManager:Lcom/jess/arms/integration/AppManager;

    return-object v0
.end method

.method public static post(Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/AppManager;->onReceive(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public activityClassIsLive(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when activityClassIsLive(Class)"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 383
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public activityInstanceIsLive(Landroid/app/Activity;)Z
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 364
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when activityInstanceIsLive(Activity)"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 3

    .line 289
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getActivityList()Ljava/util/List;

    move-result-object v1

    .line 291
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public appExit()V
    .locals 1

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->killAll()V

    .line 481
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 482
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public findActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 399
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when findActivity(Class)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandleListener()Lcom/jess/arms/integration/AppManager$HandleListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    const-string v2, "mActivityList == null when getTopActivity()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    iget-object v1, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_1
    return-object v1
.end method

.method public init(Landroid/app/Application;)Lcom/jess/arms/integration/AppManager;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/jess/arms/integration/AppManager;->mApplication:Landroid/app/Application;

    .line 95
    sget-object p1, Lcom/jess/arms/integration/AppManager;->sAppManager:Lcom/jess/arms/integration/AppManager;

    return-object p1
.end method

.method public killActivity(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 339
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when killActivity(Class)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 342
    :cond_0
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 349
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 352
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public killAll()V
    .locals 3

    .line 418
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 420
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 423
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 425
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs killAll([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 434
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 435
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 437
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 440
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 444
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 446
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs killAll([Ljava/lang/String;)V
    .locals 4

    .line 455
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 456
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 458
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 461
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 465
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 467
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceive(Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;

    invoke-interface {v0, p0, p1}, Lcom/jess/arms/integration/AppManager$HandleListener;->handleMessage(Lcom/jess/arms/integration/AppManager;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;

    .line 218
    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    .line 219
    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->mCurrentActivity:Landroid/app/Activity;

    .line 220
    iput-object v0, p0, Lcom/jess/arms/integration/AppManager;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public removeActivity(I)Landroid/app/Activity;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 321
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when removeActivity(int)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 324
    :cond_0
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    if-lez p1, :cond_1

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 328
    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mActivityList == null when removeActivity(Activity)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 307
    :cond_0
    const-class v0, Lcom/jess/arms/integration/AppManager;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/jess/arms/integration/AppManager;->mActivityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/jess/arms/integration/AppManager;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setHandleListener(Lcom/jess/arms/integration/AppManager$HandleListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/jess/arms/integration/AppManager;->mHandleListener:Lcom/jess/arms/integration/AppManager$HandleListener;

    return-void
.end method

.method public showSnackbar(Ljava/lang/String;Z)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string p2, "mCurrentActivity == null when showSnackbar(String,boolean)"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/jess/arms/integration/AppManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jess/arms/integration/AppManager$1;-><init>(Lcom/jess/arms/integration/AppManager;Ljava/lang/String;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 169
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    const-string v0, "mCurrentActivity == null when showSnackbar(String,boolean)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/jess/arms/integration/AppManager$2;

    invoke-direct {v0, p0, p1}, Lcom/jess/arms/integration/AppManager$2;-><init>(Lcom/jess/arms/integration/AppManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 183
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    const-string v1, "mCurrentActivity == null when startActivity(Intent)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, 0x10000000

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jess/arms/integration/AppManager;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jess/arms/integration/AppManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
