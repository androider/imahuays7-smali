.class public abstract Lcom/raizlabs/android/dbflow/sql/language/e;
.super Lcom/raizlabs/android/dbflow/sql/language/b;
.source "BaseTransformable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/t<",
        "TTModel;>;"
    }
.end annotation


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

    .line 23
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/e;->j()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a Select"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/s<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->a(I)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 1
    .param p1    # [Lcom/raizlabs/android/dbflow/sql/language/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/o;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/s<",
            "TTModel;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;[Lcom/raizlabs/android/dbflow/sql/language/o;)V

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 98
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 104
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a(I)Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 106
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->i()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    return-object v0
.end method
