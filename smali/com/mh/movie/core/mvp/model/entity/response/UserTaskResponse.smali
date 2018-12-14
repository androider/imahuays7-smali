.class public Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;
.super Ljava/lang/Object;
.source "UserTaskResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private signNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSignNum()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->signNum:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->list:Ljava/util/List;

    return-void
.end method

.method public setSignNum(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->signNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserTaskResponse{signNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->signNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
