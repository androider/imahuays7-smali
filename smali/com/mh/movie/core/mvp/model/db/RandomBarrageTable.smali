.class public Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "RandomBarrageTable.java"


# instance fields
.field public id:Ljava/util/UUID;

.field public isOpen:I

.field public limitDown:I

.field public limitNum:I

.field public limitUp:I

.field public timeEnd:I

.field public timeStart:I

.field public updateTime:I

.field public videoId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRandomRule()Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;
    .locals 2

    .line 60
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;-><init>()V

    .line 61
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setLimitNum(I)V

    .line 62
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setLimitUp(I)V

    .line 63
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setLimitDown(I)V

    .line 64
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setIsOpen(I)V

    .line 65
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setTimeStart(I)V

    .line 66
    iget v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->setTimeEnd(I)V

    return-object v0
.end method

.method public saveItem(I)V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->videoId:I

    return-void
.end method

.method public setRandomRule(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitNum()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    .line 50
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitUp()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    .line 51
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitDown()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    .line 52
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getIsOpen()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    .line 53
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getUpdateTime()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->updateTime:I

    .line 54
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeStart()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeEnd()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    return-void
.end method
