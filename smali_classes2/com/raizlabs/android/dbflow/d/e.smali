.class public interface abstract Lcom/raizlabs/android/dbflow/d/e;
.super Ljava/lang/Object;
.source "ModelNotifier.java"


# virtual methods
.method public abstract a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
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
.end method

.method public abstract a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
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
.end method
