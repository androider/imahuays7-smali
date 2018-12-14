.class public Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;
.super Ljava/lang/Object;
.source "ScoreConfigResponse.java"


# instance fields
.field private gmtCreate:Ljava/lang/String;

.field private gmtModified:Ljava/lang/String;

.field private id:J

.field private level:I

.field private remark:Ljava/lang/String;

.field private right:Ljava/lang/String;

.field private score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtModified()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->gmtModified:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->id:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->level:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->right:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->score:I

    return v0
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->gmtCreate:Ljava/lang/String;

    return-void
.end method

.method public setGmtModified(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->gmtModified:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->id:J

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->level:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->remark:Ljava/lang/String;

    return-void
.end method

.method public setRight(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->right:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->score:I

    return-void
.end method
