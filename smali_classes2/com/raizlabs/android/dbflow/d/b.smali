.class public Lcom/raizlabs/android/dbflow/d/b;
.super Ljava/lang/Object;
.source "ContentResolverNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/d/e;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 40
    invoke-static {v1, p1, p2, v3}, Lcom/raizlabs/android/dbflow/sql/d;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/o;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/b;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/e;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    .line 32
    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/e;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/n;->j()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-static {v1, v2, p3, p1}, Lcom/raizlabs/android/dbflow/sql/d;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method
