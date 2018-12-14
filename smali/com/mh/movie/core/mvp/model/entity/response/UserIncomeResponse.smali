.class public Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;
.super Ljava/lang/Object;
.source "UserIncomeResponse.java"


# instance fields
.field private date:Ljava/lang/String;

.field private money:D

.field private newPerson:I

.field private totalMoney:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->money:D

    return-wide v0
.end method

.method public getNewPerson()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->newPerson:I

    return v0
.end method

.method public getTotalMoney()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->totalMoney:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->date:Ljava/lang/String;

    return-void
.end method

.method public setMoney(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->money:D

    return-void
.end method

.method public setNewPerson(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->newPerson:I

    return-void
.end method

.method public setTotalMoney(D)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->totalMoney:D

    return-void
.end method
