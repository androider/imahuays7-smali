.class public interface abstract Lcom/raizlabs/android/dbflow/structure/b/a/f$c;
.super Ljava/lang/Object;
.source "QueryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onListQueryResult(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f;",
            "Ljava/util/List<",
            "TTResult;>;)V"
        }
    .end annotation
.end method
