.class public abstract Lcom/raizlabs/android/dbflow/sql/language/b;
.super Lcom/raizlabs/android/dbflow/sql/language/d;
.source "BaseModelQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/d<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Lcom/raizlabs/android/dbflow/sql/b/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/structure/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    return-void
.end method

.method private k()Lcom/raizlabs/android/dbflow/structure/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->g(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    return-object v0
.end method

.method private l()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->k()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->k()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private m()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/b;->b:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->k()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->k()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 5
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    .line 114
    :try_start_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 118
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->h()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    throw v0
.end method

.method public c()Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->k()Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->i()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/f;-><init>(Ljava/lang/Class;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->l()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/b/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->m()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/b/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/b;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lcom/raizlabs/android/dbflow/sql/b/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/b/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/b/a;-><init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V

    return-object v0
.end method
