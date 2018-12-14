.class public interface abstract Lcom/mh/movie/core/mvp/a/i$b;
.super Ljava/lang/Object;
.source "CommentContract.java"

# interfaces
.implements Lcom/jess/arms/mvp/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(IILjava/lang/Integer;)V
.end method

.method public abstract a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V
.end method

.method public abstract a(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation
.end method
