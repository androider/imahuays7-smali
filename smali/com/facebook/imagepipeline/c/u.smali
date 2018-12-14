.class public Lcom/facebook/imagepipeline/c/u;
.super Ljava/lang/Object;
.source "StagingArea.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/facebook/imagepipeline/c/u;

    sput-object v0, Lcom/facebook/imagepipeline/c/u;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/c/u;
    .locals 1

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/c/u;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/u;-><init>()V

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 188
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/u;->a:Ljava/lang/Class;

    const-string v1, "Count = %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 187
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Lcom/facebook/imagepipeline/g/e;->e(Lcom/facebook/imagepipeline/g/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/g/e;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/u;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/facebook/cache/common/b;)Z
    .locals 1

    .line 80
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/g/e;

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->b()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    .line 92
    throw v0

    :catchall_1
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(Lcom/facebook/cache/common/b;)Lcom/facebook/imagepipeline/g/e;
    .locals 6

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/e;

    if-eqz v0, :cond_1

    .line 137
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->e(Lcom/facebook/imagepipeline/g/e;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/facebook/imagepipeline/c/u;->a:Ljava/lang/Class;

    const-string v2, "Found closed reference %d for key %s (%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 146
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 147
    invoke-interface {p1}, Lcom/facebook/cache/common/b;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 148
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 143
    invoke-static {v1, v2, v3}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 151
    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object p1

    .line 152
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move-object p1, v0

    .line 154
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)Z
    .locals 5

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p2}, Lcom/facebook/imagepipeline/g/e;->e(Lcom/facebook/imagepipeline/g/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    monitor-exit p0

    return v1

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/g/e;->c()Lcom/facebook/common/references/a;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->c()Lcom/facebook/common/references/a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 115
    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/u;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 121
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 122
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 125
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/u;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    .line 126
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 120
    :try_start_4
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 121
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 122
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 123
    throw p1

    .line 120
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 121
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 122
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1
.end method
