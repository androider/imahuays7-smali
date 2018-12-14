.class public Lcom/mh/movie/core/mvp/model/entity/ShareRequest;
.super Ljava/lang/Object;
.source "ShareRequest.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public content:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public mClipboardManager:Landroid/content/ClipboardManager;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public videoId:I

.field public videoInfoId:I

.field public videoType:I

.field public webPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoId:I

    return v0
.end method

.method public getVideoInfoId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoInfoId:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoType:I

    return v0
.end method

.method public getWebPageUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->webPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmClipboardManager()Landroid/content/ClipboardManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->mClipboardManager:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoId:I

    return-void
.end method

.method public setVideoInfoId(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoInfoId:I

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->videoType:I

    return-void
.end method

.method public setWebPageUrl(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->webPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setmClipboardManager(Landroid/content/ClipboardManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->mClipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method
