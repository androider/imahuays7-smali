.class public interface abstract Lcom/mh/movie/core/mvp/a/ai$b;
.super Ljava/lang/Object;
.source "MyLevelContract.java"

# interfaces
.implements Lcom/jess/arms/mvp/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;)V
.end method

.method public abstract a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method public abstract a(ZLjava/lang/Throwable;)V
.end method
