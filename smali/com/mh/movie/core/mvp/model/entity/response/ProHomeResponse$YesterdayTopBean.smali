.class public Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;
.super Ljava/lang/Object;
.source "ProHomeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YesterdayTopBean"
.end annotation


# instance fields
.field private money:D

.field private newPerson:I

.field private tel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoney()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->money:D

    return-wide v0
.end method

.method public getNewPerson()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->newPerson:I

    return v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public setMoney(D)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->money:D

    return-void
.end method

.method public setNewPerson(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->newPerson:I

    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->tel:Ljava/lang/String;

    return-void
.end method
