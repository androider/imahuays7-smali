.class public Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;
.super Ljava/lang/Object;
.source "UserTaskResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private authId:I

.field private compleStatus:I

.field private descrition:Ljava/lang/String;

.field private id:I

.field private isShow:I

.field private money:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->authId:I

    return v0
.end method

.method public getCompleStatus()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->compleStatus:I

    return v0
.end method

.method public getDescrition()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->descrition:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->id:I

    return v0
.end method

.method public getIsShow()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->isShow:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->money:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->authId:I

    return-void
.end method

.method public setCompleStatus(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->compleStatus:I

    return-void
.end method

.method public setDescrition(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->descrition:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->id:I

    return-void
.end method

.method public setIsShow(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->isShow:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->money:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", money="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->money:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", descrition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->descrition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", authId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->authId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compleStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->compleStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
