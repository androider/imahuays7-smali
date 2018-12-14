.class public Lcom/mh/movie/core/c/f;
.super Ljava/lang/Object;
.source "WebShare.java"


# instance fields
.field private a:Lcom/sina/weibo/sdk/share/WbShareHandler;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/share/WbShareHandler;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mh/movie/core/c/f;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/c/f;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 83
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 85
    new-instance v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->title:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->description:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 90
    iget-object v2, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "emoji"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v3, "web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v3, "imageUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v3, "imageFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 107
    :pswitch_0
    new-instance p2, Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-direct {p2}, Lcom/sina/weibo/sdk/api/MultiImageObject;-><init>()V

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v3, Ljava/io/File;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p2, v2}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setImageList(Ljava/util/ArrayList;)V

    .line 112
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 113
    iput-object p2, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/c/f;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {p1, v0, v4}, Lcom/sina/weibo/sdk/share/WbShareHandler;->shareMessage(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V

    goto :goto_2

    .line 99
    :pswitch_1
    new-instance p1, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {p1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 101
    invoke-virtual {p1, p2}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 102
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/c/f;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {p1, v0, v4}, Lcom/sina/weibo/sdk/share/WbShareHandler;->shareMessage(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V

    goto :goto_2

    .line 93
    :pswitch_2
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/c/f;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {p1, v0, v4}, Lcom/sina/weibo/sdk/share/WbShareHandler;->shareMessage(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x345e1289 -> :sswitch_7
        -0x333c9dec -> :sswitch_6
        0x1cb54 -> :sswitch_5
        0x2ff57c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x58d9bd6 -> :sswitch_2
        0x5c28046 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sina.weibo"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 2

    .line 60
    iget-object v0, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/c/f$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/c/f$1;-><init>(Lcom/mh/movie/core/c/f;Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->path2Bitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/c/f;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/c/f;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
