.class public Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;
.super Ljava/lang/Object;
.source "BaseEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->data:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BaseEntity;->success:Z

    return-void
.end method
