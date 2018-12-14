.class public final Lcom/raizlabs/android/dbflow/config/g;
.super Ljava/lang/Object;
.source "TableConfig.java"


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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/raizlabs/android/dbflow/sql/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/raizlabs/android/dbflow/sql/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Lcom/raizlabs/android/dbflow/sql/c/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->b:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-object v0
.end method

.method public c()Lcom/raizlabs/android/dbflow/sql/b/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->d:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-object v0
.end method

.method public d()Lcom/raizlabs/android/dbflow/sql/b/f;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/g;->c:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-object v0
.end method
