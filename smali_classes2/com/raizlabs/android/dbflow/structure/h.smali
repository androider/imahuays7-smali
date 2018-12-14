.class public abstract Lcom/raizlabs/android/dbflow/structure/h;
.super Ljava/lang/Object;
.source "RetrievalAdapter.java"


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
.field private listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private tableConfig:Lcom/raizlabs/android/dbflow/config/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/config/g<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/e;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/a;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/g;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    .line 35
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->d()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->d()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->c()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->c()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;

    :cond_1
    return-void
.end method


# virtual methods
.method protected createListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/b;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/f;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public exists(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/h;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public abstract exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
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
.end method

.method public getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->createListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-object v0
.end method

.method public abstract getModelClass()Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/b;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/f;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public abstract getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Lcom/raizlabs/android/dbflow/sql/language/n;"
        }
    .end annotation
.end method

.method public getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->createSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-object v0
.end method

.method protected getTableConfig()Lcom/raizlabs/android/dbflow/config/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/config/g<",
            "TTModel;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/h;->tableConfig:Lcom/raizlabs/android/dbflow/config/g;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/h;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 59
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/p;->a([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/h;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 61
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/h;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p2, v1, p1}, Lcom/raizlabs/android/dbflow/sql/b/f;->a(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            "TTModel;)V"
        }
    .end annotation
.end method

.method public setListModelLoader(Lcom/raizlabs/android/dbflow/sql/b/b;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/sql/b/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-void
.end method

.method public setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/b/f;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/sql/b/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/h;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-void
.end method
