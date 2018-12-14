.class public Lcom/mh/movie/core/mvp/model/entity/response/MallResponse;
.super Ljava/lang/Object;
.source "MallResponse.java"


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MallResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MallResponse;->data:Ljava/lang/String;

    return-void
.end method
