.class Lcom/mh/movie/core/mvp/presenter/PartnerPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PartnerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;->a(Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/aj$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/aj$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;)V

    return-void
.end method
