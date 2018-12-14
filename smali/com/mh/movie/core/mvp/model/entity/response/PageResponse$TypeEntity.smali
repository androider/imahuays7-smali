.class public Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;
.super Ljava/lang/Object;
.source "PageResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeEntity"
.end annotation


# instance fields
.field private classifyName:Ljava/lang/String;

.field private id:I

.field final synthetic this$0:Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->this$0:Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassifyName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->classifyName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->id:I

    return v0
.end method

.method public setClassifyName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->classifyName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->id:I

    return-void
.end method
