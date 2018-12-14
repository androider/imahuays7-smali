.class public Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;
.super Ljava/lang/Object;
.source "LabelTestEntity.java"


# instance fields
.field private isChecked:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->name:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->isChecked:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/LabelTestEntity;->name:Ljava/lang/String;

    return-void
.end method
