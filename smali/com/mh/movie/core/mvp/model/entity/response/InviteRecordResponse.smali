.class public Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;
.super Ljava/lang/Object;
.source "InviteRecordResponse.java"


# instance fields
.field private level:I

.field private nickName:Ljava/lang/String;

.field private reward:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->level:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getReward()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->reward:I

    return v0
.end method

.method public setLevel(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->level:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setReward(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->reward:I

    return-void
.end method
