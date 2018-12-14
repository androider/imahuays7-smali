.class public Lcom/mh/movie/core/mvp/model/entity/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private imgAddr:Ljava/lang/String;

.field private success:Z

.field private videoAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAddr()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->imgAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAddr()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->videoAddr:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setImgAddr(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->imgAddr:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->success:Z

    return-void
.end method

.method public setVideoAddr(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->videoAddr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResponse{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->imgAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->success:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", videoAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->videoAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
