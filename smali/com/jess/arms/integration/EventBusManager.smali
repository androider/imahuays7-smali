.class public final Lcom/jess/arms/integration/EventBusManager;
.super Ljava/lang/Object;
.source "EventBusManager.java"


# static fields
.field private static volatile sInstance:Lcom/jess/arms/integration/EventBusManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jess/arms/integration/EventBusManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/jess/arms/integration/EventBusManager;->sInstance:Lcom/jess/arms/integration/EventBusManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/jess/arms/integration/EventBusManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/jess/arms/integration/EventBusManager;->sInstance:Lcom/jess/arms/integration/EventBusManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/jess/arms/integration/EventBusManager;

    invoke-direct {v1}, Lcom/jess/arms/integration/EventBusManager;-><init>()V

    sput-object v1, Lcom/jess/arms/integration/EventBusManager;->sInstance:Lcom/jess/arms/integration/EventBusManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/jess/arms/integration/EventBusManager;->sInstance:Lcom/jess/arms/integration/EventBusManager;

    return-object v0
.end method

.method private haveAnnotation(Ljava/lang/Object;)Z
    .locals 8

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jess/arms/integration/EventBusManager;->isSystemCalss(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :goto_1
    const/4 v4, 0x0

    .line 161
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 162
    aget-object v5, v3, v4

    .line 163
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 165
    const-class v7, Lorg/greenrobot/eventbus/l;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v6

    if-ne v5, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 158
    throw p1

    :catch_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isSystemCalss(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "java."

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 130
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simple/eventbus/EventBus;->clear()V

    goto :goto_0

    .line 132
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    .line 89
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/EventBusManager;->haveAnnotation(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 117
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;)V

    return-object v1

    .line 120
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .line 73
    sget-boolean v0, Lcom/jess/arms/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 76
    :cond_0
    sget-boolean v0, Lcom/jess/arms/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/EventBusManager;->haveAnnotation(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
