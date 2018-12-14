.class public Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;
.super Ljava/lang/Object;
.source "RecordResponse.java"


# instance fields
.field private amount:D

.field private balance:D

.field private createTime:J

.field private orderId:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->amount:D

    return-wide v0
.end method

.method public getBalance()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->balance:D

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->createTime:J

    return-wide v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->status:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->amount:D

    return-void
.end method

.method public setBalance(D)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->balance:D

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->createTime:J

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->status:I

    return-void
.end method
