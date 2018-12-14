.class public Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;
.super Ljava/lang/Object;
.source "DownUrlResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownUrlBean"
.end annotation


# instance fields
.field private id:I

.field private m3u8Format:Ljava/lang/String;

.field private m3u8PlayUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->this$0:Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->id:I

    return v0
.end method

.method public getM3u8Format()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->m3u8Format:Ljava/lang/String;

    return-object v0
.end method

.method public getM3u8PlayUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->m3u8PlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->id:I

    return-void
.end method

.method public setM3u8Format(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->m3u8Format:Ljava/lang/String;

    return-void
.end method

.method public setM3u8PlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->m3u8PlayUrl:Ljava/lang/String;

    return-void
.end method
