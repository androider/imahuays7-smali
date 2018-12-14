.class public abstract Lcom/raizlabs/android/dbflow/structure/e;
.super Lcom/raizlabs/android/dbflow/structure/b;
.source "ModelAdapter.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/structure/c<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private cachingColumns:[Ljava/lang/String;

.field private compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

.field private listModelSaver:Lcom/raizlabs/android/dbflow/sql/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/a<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private modelCache:Lcom/raizlabs/android/dbflow/structure/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/a/b<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field private modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    .line 47
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getTableConfig()Lcom/raizlabs/android/dbflow/config/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getTableConfig()Lcom/raizlabs/android/dbflow/config/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->b()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getTableConfig()Lcom/raizlabs/android/dbflow/config/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->b()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 49
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Lcom/raizlabs/android/dbflow/structure/e;)V

    :cond_0
    return-void
.end method

.method private throwCachingError()V
    .locals 5

    .line 551
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v1, "This method may have been called in error. The model class %1s must containan auto-incrementing or at least one primary key (if used in a ModelCache, this method may be called)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 554
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 552
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwSingleCachingError()V
    .locals 5

    .line 558
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v1, "This method may have been called in error. The model class %1s must containan auto-incrementing or one primary key (if used in a ModelCache, this method may be called)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 561
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 559
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/ContentValues;
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
            "Landroid/content/ContentValues;",
            "TTModel;)V"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/e;->bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    return-void
.end method

.method public bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/g;
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
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/e;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V

    return-void
.end method

.method public bindToStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/g;
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
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/e;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V

    return-void
.end method

.method public cachingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeCompiledStatement()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeDeleteStatement()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeInsertStatement()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public closeUpdateStatement()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-void
.end method

.method public createCachingColumns()[Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 342
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getAutoIncrementingColumnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c/a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c/a;-><init>(Lcom/raizlabs/android/dbflow/sql/c/b;)V

    return-object v0
.end method

.method public createModelCache()Lcom/raizlabs/android/dbflow/structure/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/b<",
            "TTModel;*>;"
        }
    .end annotation

    .line 490
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/a/c;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/a/c;-><init>(I)V

    return-object v0
.end method

.method protected createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c/b;-><init>()V

    return-object v0
.end method

.method public createWithDatabase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/Object;)Z
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

    .line 246
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
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

    .line 251
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->d(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public deleteAll(Ljava/util/Collection;)V
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

    .line 261
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->d(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
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

    .line 256
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->d(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
.end method

.method public getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 310
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v1, "This method may have been called in error. The model class %1s must contain an autoincrementing or single int/long primary key (if used in a ModelCache, this method may be called)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 311
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 298
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v0, "This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 299
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCacheConverter()Lcom/raizlabs/android/dbflow/structure/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/a<",
            "*>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v1, "For multiple primary keys, a public static IMultiKeyCacheConverter field mustbe  marked with @MultiCacheField in the corresponding model class. The resulting keymust be a unique combination of the multiple keys, otherwise inconsistencies may occur."

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCacheSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getCachingColumnValueFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/e;->throwSingleCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValueFromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/e;->throwSingleCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromCursor([Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/j;)[Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 365
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/e;->throwCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TTModel;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/e;->throwCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumns()[Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->cachingColumns:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->createCachingColumns()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->cachingColumns:[Ljava/lang/String;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->cachingColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCachingId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getCachingColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCachingId([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 417
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 419
    aget-object p1, p1, v0

    return-object p1

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getCacheConverter()Lcom/raizlabs/android/dbflow/structure/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/e;->getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getCompiledStatementQuery()Ljava/lang/String;
.end method

.method public abstract getCreationQuery()Ljava/lang/String;
.end method

.method public getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/e;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getDeleteStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getDeleteStatementQuery()Ljava/lang/String;
.end method

.method public getInsertOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 539
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getInsertStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->insertStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getInsertStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected getInsertStatementQuery()Ljava/lang/String;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/c/a;

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->createListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/c/a;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/c/a;

    return-object v0
.end method

.method public getModelCache()Lcom/raizlabs/android/dbflow/structure/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/b<",
            "TTModel;*>;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelCache:Lcom/raizlabs/android/dbflow/structure/a/b;

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->createModelCache()Lcom/raizlabs/android/dbflow/structure/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelCache:Lcom/raizlabs/android/dbflow/structure/a/b;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelCache:Lcom/raizlabs/android/dbflow/structure/a/b;

    return-object v0
.end method

.method public getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 432
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Lcom/raizlabs/android/dbflow/structure/e;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-object v0
.end method

.method public abstract getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
.end method

.method public getUpdateOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 532
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/e;->updateStatement:Lcom/raizlabs/android/dbflow/structure/b/g;

    return-object v0
.end method

.method public getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getUpdateStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUpdateStatementQuery()Ljava/lang/String;
.end method

.method public hasAutoIncrement(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public insert(Ljava/lang/Object;)J
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

    .line 206
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->c(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J
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

    .line 211
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->c(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertAll(Ljava/util/Collection;)V
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

    .line 216
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->b(Ljava/util/Collection;)V

    return-void
.end method

.method public insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
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

    .line 221
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->b(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            ")TTModel;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/e;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/j;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/j;",
            ")V"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->cachingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/e;->throwCachingError()V

    :cond_0
    return-void
.end method

.method public removeModelFromCache(Ljava/lang/Object;)V
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

    .line 406
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelCache()Lcom/raizlabs/android/dbflow/structure/a/b;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save(Ljava/lang/Object;)Z
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

    .line 186
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
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

    .line 191
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public saveAll(Ljava/util/Collection;)V
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

    .line 196
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
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

    .line 201
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->a(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setModelSaver(Lcom/raizlabs/android/dbflow/sql/c/b;)V
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

    .line 458
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    .line 459
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/e;->modelSaver:Lcom/raizlabs/android/dbflow/sql/c/b;

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/c/b;->a(Lcom/raizlabs/android/dbflow/structure/e;)V

    return-void
.end method

.method public storeModelInCache(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelCache()Lcom/raizlabs/android/dbflow/structure/a/b;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/structure/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)Z
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

    .line 226
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
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

    .line 231
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/b;->b(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public updateAll(Ljava/util/Collection;)V
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

    .line 236
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c/a;->c(Ljava/util/Collection;)V

    return-void
.end method

.method public updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
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

    .line 241
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/e;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/c/a;->c(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    return-void
.end method
