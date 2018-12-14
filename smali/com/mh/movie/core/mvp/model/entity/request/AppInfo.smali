.class public Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private modelName:I

.field private packageId:Ljava/lang/String;

.field private terminal:I

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->modelName:I

    const-string v0, "3"

    .line 17
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->packageId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->terminal:I

    const-string v0, "b2089d782099204d"

    .line 20
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->uuid:Ljava/lang/String;

    const-string v0, "1.3.0"

    .line 21
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelName()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->modelName:I

    return v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminal()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->terminal:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo()Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;
    .locals 1

    const/4 v0, 0x4

    .line 62
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->modelName:I

    .line 63
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getPackageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->packageId:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->terminal:I

    .line 65
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->uuid:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setModelName(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->modelName:I

    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->packageId:Ljava/lang/String;

    return-void
.end method

.method public setTerminal(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->terminal:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->version:Ljava/lang/String;

    return-void
.end method
