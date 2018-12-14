.class public Lcom/mh/movie/core/mvp/model/db/ModuleEvent;
.super Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.source "ModuleEvent.java"


# instance fields
.field moduleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;->moduleId:I

    return v0
.end method

.method public setModuleId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;->moduleId:I

    return-void
.end method
