.class public Lcom/raizlabs/android/dbflow/sql/c/b;
.super Ljava/lang/Object;
.source "ModelSaver.java"


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
.field private a:Lcom/raizlabs/android/dbflow/structure/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/e;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 126
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/e;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 127
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->e()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/raizlabs/android/dbflow/structure/e;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 130
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    throw p1
.end method

.method protected a()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/e;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    .line 30
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v2

    .line 29
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->c(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v1

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, v1, v2}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 95
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {p2, p3, p1}, Lcom/raizlabs/android/dbflow/structure/e;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 96
    invoke-interface {p3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 98
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/g;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p0, p1, p3, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 68
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object p2

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    sget-object p4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, p3, p4}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/raizlabs/android/dbflow/structure/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/e;->deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 157
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/e;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V

    .line 159
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 p2, 0x0

    if-eqz v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 161
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;Lcom/raizlabs/android/dbflow/structure/b/g;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 86
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Object;)J
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 116
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 109
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/e;->getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c/b;->a:Lcom/raizlabs/android/dbflow/structure/e;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/e;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 147
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 140
    monitor-exit p0

    throw p1
.end method
