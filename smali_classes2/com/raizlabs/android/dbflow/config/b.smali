.class public abstract Lcom/raizlabs/android/dbflow/config/b;
.super Ljava/lang/Object;
.source "DatabaseDefinition.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/f;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/raizlabs/android/dbflow/structure/b/l;

.field private g:Lcom/raizlabs/android/dbflow/structure/b/f;

.field private h:Z

.field private i:Lcom/raizlabs/android/dbflow/d/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/raizlabs/android/dbflow/config/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/raizlabs/android/dbflow/d/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->a:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->b:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->d:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/b;->h:Z

    .line 76
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/a;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/config/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/raizlabs/android/dbflow/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->i:Lcom/raizlabs/android/dbflow/d/a;

    return-object v0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 276
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/c;Lcom/raizlabs/android/dbflow/config/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TT;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/e;

    return-object p1
.end method

.method a(Lcom/raizlabs/android/dbflow/config/a;)V
    .locals 4
    .param p1    # Lcom/raizlabs/android/dbflow/config/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/a;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/config/g;

    .line 89
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/config/b;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/structure/e;

    if-nez v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->c()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->c()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/e;->setListModelLoader(Lcom/raizlabs/android/dbflow/sql/b/b;)V

    .line 97
    :cond_2
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->d()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->d()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/e;->setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/b/f;)V

    .line 101
    :cond_3
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->b()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/g;->b()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/e;->setModelSaver(Lcom/raizlabs/android/dbflow/sql/c/b;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/a;->e()Lcom/raizlabs/android/dbflow/structure/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    :cond_5
    if-eqz p1, :cond_7

    .line 108
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/a;->f()Lcom/raizlabs/android/dbflow/config/a$b;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/a;->f()Lcom/raizlabs/android/dbflow/config/a$b;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/raizlabs/android/dbflow/config/a$b;->a(Lcom/raizlabs/android/dbflow/config/b;)Lcom/raizlabs/android/dbflow/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b;->i:Lcom/raizlabs/android/dbflow/d/a;

    goto :goto_2

    .line 109
    :cond_7
    :goto_1
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/b/a/a;

    invoke-direct {p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/a;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b;->i:Lcom/raizlabs/android/dbflow/d/a;

    :goto_2
    return-void
.end method

.method protected a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/config/c;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/raizlabs/android/dbflow/config/c;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/b;)V

    .line 117
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/e;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TT;>;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/f;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/e;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 280
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->a()V

    .line 283
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/c;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 284
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->c()V

    throw p1
.end method

.method public c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/g<",
            "TT;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/g;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/f;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/b;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/a/a;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->a:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized e()Lcom/raizlabs/android/dbflow/structure/b/l;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/a;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->d()Lcom/raizlabs/android/dbflow/config/a$a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->d()Lcom/raizlabs/android/dbflow/config/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/b;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    invoke-interface {v0, p0, v1}, Lcom/raizlabs/android/dbflow/config/a$a;->a(Lcom/raizlabs/android/dbflow/config/b;Lcom/raizlabs/android/dbflow/structure/b/f;)Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/k;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/b;->g:Lcom/raizlabs/android/dbflow/structure/b/f;

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/structure/b/k;-><init>(Lcom/raizlabs/android/dbflow/config/b;Lcom/raizlabs/android/dbflow/structure/b/f;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->f:Lcom/raizlabs/android/dbflow/structure/b/l;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->a()V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->f:Lcom/raizlabs/android/dbflow/structure/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 241
    monitor-exit p0

    throw v0
.end method

.method public f()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->e()Lcom/raizlabs/android/dbflow/structure/b/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/l;->b()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/raizlabs/android/dbflow/d/e;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->k:Lcom/raizlabs/android/dbflow/d/e;

    if-nez v0, :cond_2

    .line 263
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/a;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->g()Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->g()Lcom/raizlabs/android/dbflow/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->k:Lcom/raizlabs/android/dbflow/d/e;

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/d/b;

    const-string v1, "com.dbflow.authority"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/d/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->k:Lcom/raizlabs/android/dbflow/d/e;

    .line 271
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->k:Lcom/raizlabs/android/dbflow/d/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ".db"

    :goto_0
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b;->j:Lcom/raizlabs/android/dbflow/config/a;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract l()I
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method

.method public abstract o()Z
.end method

.method public abstract p()Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
