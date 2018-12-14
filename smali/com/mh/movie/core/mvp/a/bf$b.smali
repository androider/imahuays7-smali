.class public interface abstract Lcom/mh/movie/core/mvp/a/bf$b;
.super Ljava/lang/Object;
.source "TvplayDetailContract.java"

# interfaces
.implements Lcom/jess/arms/mvp/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/a/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
.end method

.method public abstract a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
.end method

.method public abstract a(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;I)V"
        }
    .end annotation
.end method
