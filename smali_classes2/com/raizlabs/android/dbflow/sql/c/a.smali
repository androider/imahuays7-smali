.class public Lcom/raizlabs/android/dbflow/sql/c/a;
.super Ljava/lang/Object;
.source "ListModelSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/c/b;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/sql/c/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/c/a;->a(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 26
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v3, v2, p2, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 36
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    .line 37
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 36
    :try_start_4
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    .line 37
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/c/a;->b(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v2, v1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    :try_start_4
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 47
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/c/a;->c(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v2, v1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    :try_start_4
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/c/a;->d(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 91
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/c/a;->a:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v2, v1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 100
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 100
    :try_start_4
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method
