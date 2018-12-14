.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/t;
.super Ljava/lang/Object;
.source "WhereBase.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/language/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Lcom/raizlabs/android/dbflow/sql/language/a;"
    }
.end annotation


# virtual methods
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

.method public abstract j()Lcom/raizlabs/android/dbflow/sql/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
