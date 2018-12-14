.class public interface abstract Lcom/raizlabs/android/dbflow/d/g;
.super Ljava/lang/Object;
.source "OnTableChangedListener.java"


# virtual methods
.method public abstract a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation
.end method
