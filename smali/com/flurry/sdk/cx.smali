.class public final Lcom/flurry/sdk/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/cx;


# instance fields
.field private final b:Lcom/flurry/sdk/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cr<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/dm<",
            "Lcom/flurry/sdk/cw<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cr<",
            "Lcom/flurry/sdk/dm<",
            "Lcom/flurry/sdk/cw<",
            "*>;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/flurry/sdk/cr;

    invoke-direct {v0}, Lcom/flurry/sdk/cr;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    .line 20
    new-instance v0, Lcom/flurry/sdk/cr;

    invoke-direct {v0}, Lcom/flurry/sdk/cr;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/cx;
    .locals 2

    const-class v0, Lcom/flurry/sdk/cx;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/flurry/sdk/cx;

    invoke-direct {v1}, Lcom/flurry/sdk/cx;-><init>()V

    sput-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;

    .line 31
    :cond_0
    sget-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cw<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 130
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    .line 132
    invoke-virtual {v1, p1}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 133
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dm;

    invoke-virtual {v1}, Lcom/flurry/sdk/dm;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cw;

    if-nez v1, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/cx;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;

    invoke-direct {v1}, Lcom/flurry/sdk/cx;->c()V

    const/4 v1, 0x0

    .line 37
    sput-object v1, Lcom/flurry/sdk/cx;->a:Lcom/flurry/sdk/cx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {v0}, Lcom/flurry/sdk/cr;->a()V

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    invoke-virtual {v0}, Lcom/flurry/sdk/cr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/cv;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/cv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cw;

    .line 116
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/cx$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/flurry/sdk/cx$1;-><init>(Lcom/flurry/sdk/cx;Lcom/flurry/sdk/cw;Lcom/flurry/sdk/cv;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/cw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/cw<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 88
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/dm;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/dm;-><init>(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cw<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/flurry/sdk/dm;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/dm;-><init>(Ljava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    const/4 v1, 0x0

    .line 1131
    invoke-virtual {p2, p1, v1}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1133
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    iget-object p2, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 48
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cw<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/dm;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/dm;-><init>(Ljava/lang/Object;)V

    .line 70
    iget-object p2, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    iget-object p2, p0, Lcom/flurry/sdk/cx;->c:Lcom/flurry/sdk/cr;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1
.end method
