.class public Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;
.super Ljava/lang/Object;
.source "TabResponse.java"


# instance fields
.field private columnId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->columnId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnId(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->columnId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->title:Ljava/lang/String;

    return-void
.end method
