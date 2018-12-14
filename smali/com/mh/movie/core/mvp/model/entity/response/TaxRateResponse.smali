.class public Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;
.super Ljava/lang/Object;
.source "TaxRateResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;
    }
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;->rules:Ljava/util/List;

    return-object v0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;->rules:Ljava/util/List;

    return-void
.end method
