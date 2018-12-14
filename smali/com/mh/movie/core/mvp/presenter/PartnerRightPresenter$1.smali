.class Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PartnerRightPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;->a(Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/al$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/al$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;)V

    return-void
.end method
