.class public Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;
.super Ljava/lang/Object;
.source "UpdateCashRequest.java"


# instance fields
.field private cashMoney:I

.field private type:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCashMoney()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->cashMoney:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->type:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->userId:J

    return-wide v0
.end method

.method public setCashMoney(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->cashMoney:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->type:I

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->userId:J

    return-void
.end method
