.class public Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;
.super Ljava/lang/Object;
.source "QueryTaxDesc.java"


# instance fields
.field private descrition:Ljava/lang/String;

.field private money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescrition()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->descrition:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->money:I

    return v0
.end method

.method public setDescrition(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->descrition:Ljava/lang/String;

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->money:I

    return-void
.end method
