.class public Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;
.super Ljava/lang/Object;
.source "QueryBarrageResponse.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:I

.field private nodeTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->id:I

    return v0
.end method

.method public getNodeTime()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->nodeTime:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->id:I

    return-void
.end method

.method public setNodeTime(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->nodeTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryBarrageResponse{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->nodeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
