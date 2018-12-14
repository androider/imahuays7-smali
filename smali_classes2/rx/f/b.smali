.class public final Lrx/f/b;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/f;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lrx/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lrx/f;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/f;

    .line 150
    :try_start_0
    invoke-interface {v1}, Lrx/f;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/f;)V
    .locals 2

    .line 60
    invoke-interface {p1}, Lrx/f;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-nez v0, :cond_3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    .line 69
    :cond_1
    iget-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 75
    :cond_3
    :goto_0
    invoke-interface {p1}, Lrx/f;->unsubscribe()V

    return-void
.end method

.method public b(Lrx/f;)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-nez v0, :cond_2

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {p1}, Lrx/f;->unsubscribe()V

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-nez v0, :cond_1

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lrx/f/b;->b:Z

    .line 135
    iget-object v0, p0, Lrx/f/b;->a:Ljava/util/Set;

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lrx/f/b;->a:Ljava/util/Set;

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v0}, Lrx/f/b;->a(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
