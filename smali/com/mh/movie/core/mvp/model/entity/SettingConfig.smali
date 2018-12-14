.class public Lcom/mh/movie/core/mvp/model/entity/SettingConfig;
.super Ljava/lang/Object;
.source "SettingConfig.java"


# instance fields
.field private downloadDefaultClarity:I

.field private downloadNumber:I

.field private isAutoClearCache:Z

.field private isContinuousPlay:Z

.field private isDownloadWithoutWifi:Z

.field private isGestureOperation:Z

.field private isSkipHeadAndEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isAutoClearCache:Z

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay:Z

    .line 38
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi:Z

    .line 39
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd:Z

    .line 40
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation:Z

    .line 41
    iput v1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadNumber:I

    .line 42
    iput v1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadDefaultClarity:I

    return-void
.end method


# virtual methods
.method public getDownloadDefaultClarity()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadDefaultClarity:I

    return v0
.end method

.method public getDownloadNumber()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadNumber:I

    return v0
.end method

.method public isAutoClearCache()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isAutoClearCache:Z

    return v0
.end method

.method public isContinuousPlay()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay:Z

    return v0
.end method

.method public isDownloadWithoutWifi()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi:Z

    return v0
.end method

.method public isGestureOperation()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation:Z

    return v0
.end method

.method public isSkipHeadAndEnd()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd:Z

    return v0
.end method

.method public setAutoClearCache(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isAutoClearCache:Z

    return-void
.end method

.method public setContinuousPlay(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay:Z

    return-void
.end method

.method public setDownloadDefaultClarity(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadDefaultClarity:I

    return-void
.end method

.method public setDownloadNumber(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->downloadNumber:I

    return-void
.end method

.method public setDownloadWithoutWifi(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi:Z

    return-void
.end method

.method public setGestureOperation(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation:Z

    return-void
.end method

.method public setSkipHeadAndEnd(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd:Z

    return-void
.end method
