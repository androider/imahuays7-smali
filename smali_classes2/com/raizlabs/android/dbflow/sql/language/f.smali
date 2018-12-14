.class public Lcom/raizlabs/android/dbflow/sql/language/f;
.super Ljava/lang/Object;
.source "CursorResult.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/c/a<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/structure/b/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/database/Cursor;)V
    .locals 0
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p2

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->g(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Lcom/raizlabs/android/dbflow/structure/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 63
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/b;->a(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/f;->close()V

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->b(Lcom/raizlabs/android/dbflow/structure/b/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/f;->close()V

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->close()V

    :cond_0
    return-void
.end method
