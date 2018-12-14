.class public Lcom/mh/movie/core/mvp/model/db/TableTask;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "TableTask.java"


# instance fields
.field public authId:I

.field public compleStatus:I

.field public descrition:Ljava/lang/String;

.field public id:I

.field public money:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public setData(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    .line 28
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->title:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getMoney()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    .line 30
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getDescrition()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->descrition:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->authId:I

    .line 32
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getCompleStatus()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    return-void
.end method
