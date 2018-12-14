.class public Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;
.super Ljava/lang/Object;
.source "ProHomeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemListBean"
.end annotation


# instance fields
.field private id:I

.field private openInstallUrl:Ljava/lang/String;

.field private proDescription:Ljava/lang/String;

.field private proIdPrefix:Ljava/lang/String;

.field private proMark:Z

.field private systemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->id:I

    return v0
.end method

.method public getOpenInstallUrl()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->openInstallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProDescription()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProIdPrefix()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proIdPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->systemName:Ljava/lang/String;

    return-object v0
.end method

.method public isProMark()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proMark:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->id:I

    return-void
.end method

.method public setOpenInstallUrl(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->openInstallUrl:Ljava/lang/String;

    return-void
.end method

.method public setProDescription(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proDescription:Ljava/lang/String;

    return-void
.end method

.method public setProIdPrefix(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proIdPrefix:Ljava/lang/String;

    return-void
.end method

.method public setProMark(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->proMark:Z

    return-void
.end method

.method public setSystemName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->systemName:Ljava/lang/String;

    return-void
.end method
