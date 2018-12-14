.class public abstract Lcom/raizlabs/android/dbflow/sql/language/d;
.super Ljava/lang/Object;
.source "BaseQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/e;
.implements Lcom/raizlabs/android/dbflow/sql/language/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b/e;",
        "Lcom/raizlabs/android/dbflow/sql/language/a;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->c(Lcom/raizlabs/android/dbflow/structure/b/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public c(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 4

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->a(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 4
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->b(Lcom/raizlabs/android/dbflow/structure/b/i;)J

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

.method public e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 4
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/d;->f(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->e()J

    .line 101
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 4
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compiling Query Into Statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/h;

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/i;->b(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/raizlabs/android/dbflow/structure/b/h;-><init>(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/sql/language/d;)V

    return-object v1
.end method

.method public h()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public i()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/d;->e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
