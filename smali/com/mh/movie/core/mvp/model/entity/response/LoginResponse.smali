.class public Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;
    }
.end annotation


# instance fields
.field private adsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private auth:Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;

.field private bootadSwitch:Z

.field private detail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

.field private promoter_switch:Z

.field private sign:Ljava/lang/String;

.field private timeStamp:I

.field private token:Ljava/lang/String;

.field private uid:J

.field private urlMap:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

.field private weixinKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->adsList:Ljava/util/List;

    return-object v0
.end method

.method public getAuth()Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->auth:Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->uid:J

    return-wide v0
.end method

.method public getUrlMap()Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->urlMap:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    return-object v0
.end method

.method public getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->detail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-object v0
.end method

.method public getWeixinKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->weixinKey:Ljava/lang/String;

    return-object v0
.end method

.method public isBootadSwitch()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->bootadSwitch:Z

    return v0
.end method

.method public isPromoter_switch()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->promoter_switch:Z

    return v0
.end method

.method public setAdsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->adsList:Ljava/util/List;

    return-void
.end method

.method public setAuth(Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->auth:Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;

    return-void
.end method

.method public setBootadSwitch(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->bootadSwitch:Z

    return-void
.end method

.method public setPromoter_switch(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->promoter_switch:Z

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->uid:J

    return-void
.end method

.method public setUrlMap(Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->urlMap:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    return-void
.end method

.method public setUserInfo(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->detail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-void
.end method

.method public setWeixinKey(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->weixinKey:Ljava/lang/String;

    return-void
.end method
