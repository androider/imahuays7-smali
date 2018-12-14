.class public interface abstract Lcom/mh/movie/core/mvp/model/a/b/a;
.super Ljava/lang/Object;
.source "UserService.java"


# virtual methods
.method public abstract a(II)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "since"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/users"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.github.v3+json"
        }
    .end annotation
.end method
