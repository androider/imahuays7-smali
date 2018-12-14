.class public Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"


# instance fields
.field private authIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;

.field private barrageNum:I

.field private begVideoNum:I

.field private canCacheNum:I

.field private cancelAdNum:I

.field private cellphone:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private invitation:Z

.field private invitationCode:Ljava/lang/String;

.field private level:I

.field private levelScore:I

.field private loginToken:Ljava/lang/String;

.field private money:I

.field private nickName:Ljava/lang/String;

.field private packageId:I

.field private proMark:Z

.field private restCacheNum:I

.field private score:I

.field private token:Ljava/lang/String;

.field private userId:J

.field private userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMoney(I)V
    .locals 1

    .line 292
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->money:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->money:I

    return-void
.end method

.method public getAuthIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->authIdList:Ljava/util/List;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBarrageNum()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->barrageNum:I

    return v0
.end method

.method public getBegVideoNum()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->begVideoNum:I

    return v0
.end method

.method public getCanCacheNum()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->canCacheNum:I

    return v0
.end method

.method public getCancelAdNum()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->cancelAdNum:I

    return v0
.end method

.method public getCellphone()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->countryCode:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "\u672a\u77e5"

    return-object v0
.end method

.method public getGenderWord()Ljava/lang/String;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7537"

    goto :goto_0

    :cond_1
    const-string v0, "\u5973"

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const-string v0, "\u672a\u8bbe\u7f6e"

    return-object v0
.end method

.method public getInvitationCode()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->invitationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->level:I

    return v0
.end method

.method public getLevelScore()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->levelScore:I

    return v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->money:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->nickName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->nickName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->packageId:I

    return v0
.end method

.method public getRestCacheNum()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->restCacheNum:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->score:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->userId:J

    return-wide v0
.end method

.method public getUserType()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->userType:I

    return v0
.end method

.method public isInvitation()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->invitation:Z

    return v0
.end method

.method public isProMark()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->proMark:Z

    return v0
.end method

.method public setAuthIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->authIdList:Ljava/util/List;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setBarrageNum(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->barrageNum:I

    return-void
.end method

.method public setBegVideoNum(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->begVideoNum:I

    return-void
.end method

.method public setCanCacheNum(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->canCacheNum:I

    return-void
.end method

.method public setCancelAdNum(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->cancelAdNum:I

    return-void
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->email:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->gender:Ljava/lang/String;

    return-void
.end method

.method public setInvitation(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->invitation:Z

    return-void
.end method

.method public setInvitationCode(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->invitationCode:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->level:I

    return-void
.end method

.method public setLevelScore(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->levelScore:I

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->money:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->packageId:I

    return-void
.end method

.method public setProMark(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->proMark:Z

    return-void
.end method

.method public setRestCacheNum(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->restCacheNum:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->score:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->userId:J

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->userType:I

    return-void
.end method
