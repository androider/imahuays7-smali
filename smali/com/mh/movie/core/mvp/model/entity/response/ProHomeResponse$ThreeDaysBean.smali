.class public Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;
.super Ljava/lang/Object;
.source "ProHomeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreeDaysBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private money:D

.field private newPerson:I

.field private totalMoney:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()D
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->money:D

    return-wide v0
.end method

.method public getNewPerson()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->newPerson:I

    return v0
.end method

.method public getTotalMoney()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->totalMoney:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setMoney(D)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->money:D

    return-void
.end method

.method public setNewPerson(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->newPerson:I

    return-void
.end method

.method public setTotalMoney(D)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->totalMoney:D

    return-void
.end method
