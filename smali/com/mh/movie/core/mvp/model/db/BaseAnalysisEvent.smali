.class public Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.super Ljava/lang/Object;
.source "BaseAnalysisEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network:I

.field private osVersion:Ljava/lang/String;

.field private provider:I

.field private secondaryType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mh/movie/core/mvp/ui/b;->b:J

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->createTime:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->model:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getSystemName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->osVersion:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkInt(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->network:I

    .line 18
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getOperator(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->provider:I

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->secondaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->secondaryType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->type:Ljava/lang/String;

    return-void
.end method
