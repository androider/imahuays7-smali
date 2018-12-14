.class Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ExChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/n$b;

    const-string v0, "success"

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/mh/movie/core/mvp/a/n$b;->a(ZLjava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->a:I

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;I)I

    .line 133
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCanCacheNum()I

    move-result p1

    .line 134
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getRestCacheNum()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->f(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p1, p1, 0xa

    .line 145
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setCanCacheNum(I)V

    add-int/lit8 v0, v0, 0xa

    .line 147
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setRestCacheNum(I)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x3

    .line 139
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setCanCacheNum(I)V

    add-int/lit8 v0, v0, 0x3

    .line 141
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setRestCacheNum(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->g(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/n$b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->h(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/n$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
