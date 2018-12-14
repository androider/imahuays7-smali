.class public Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;
.super Ljava/lang/Object;
.source "TaxRateResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RulesBean"
.end annotation


# instance fields
.field private id:I

.field private systemId:I

.field private systemName:Ljava/lang/String;

.field private taxMax:I

.field private taxMin:I

.field private taxRate:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->id:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->systemId:I

    return v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->systemName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxMax()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxMax:I

    return v0
.end method

.method public getTaxMin()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxMin:I

    return v0
.end method

.method public getTaxRate()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxRate:D

    return-wide v0
.end method

.method public setId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->id:I

    return-void
.end method

.method public setSystemId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->systemId:I

    return-void
.end method

.method public setSystemName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->systemName:Ljava/lang/String;

    return-void
.end method

.method public setTaxMax(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxMax:I

    return-void
.end method

.method public setTaxMin(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxMin:I

    return-void
.end method

.method public setTaxRate(D)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->taxRate:D

    return-void
.end method
