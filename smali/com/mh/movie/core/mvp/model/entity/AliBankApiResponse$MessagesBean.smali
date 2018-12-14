.class public Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;
.super Ljava/lang/Object;
.source "AliBankApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesBean"
.end annotation


# instance fields
.field private errorCodes:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCodes()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;->errorCodes:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCodes(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;->errorCodes:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;->name:Ljava/lang/String;

    return-void
.end method
