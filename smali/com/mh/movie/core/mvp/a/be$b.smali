.class public interface abstract Lcom/mh/movie/core/mvp/a/be$b;
.super Ljava/lang/Object;
.source "TvContract.java"

# interfaces
.implements Lcom/jess/arms/mvp/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/a/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method public abstract a(ZLjava/lang/Throwable;)V
.end method
