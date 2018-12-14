.class public interface abstract Lcom/raizlabs/android/dbflow/sql/b/d;
.super Ljava/lang/Object;
.source "ModelQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b/e;"
    }
.end annotation


# virtual methods
.method public abstract c()Lcom/raizlabs/android/dbflow/sql/language/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/Class;
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
