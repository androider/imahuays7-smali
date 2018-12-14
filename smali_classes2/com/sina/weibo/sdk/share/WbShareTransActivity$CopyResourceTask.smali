.class Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;
.super Landroid/os/AsyncTask;
.source "WbShareTransActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/share/WbShareTransActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sina/weibo/sdk/api/WeiboMultiMessage;",
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/share/WbShareTransActivity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/share/WbShareTransActivity;Lcom/sina/weibo/sdk/share/WbShareTransActivity$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;-><init>(Lcom/sina/weibo/sdk/share/WbShareTransActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;
    .locals 7

    const/4 v0, 0x0

    .line 223
    aget-object p1, p1, v0

    .line 224
    new-instance v1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;

    iget-object v2, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;-><init>(Lcom/sina/weibo/sdk/share/WbShareTransActivity;Lcom/sina/weibo/sdk/share/WbShareTransActivity$1;)V

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-static {v2}, Lcom/sina/weibo/sdk/WbSdk;->isWbInstall(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 228
    iget-object v2, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-static {v2}, Lcom/sina/weibo/sdk/WeiboAppManager;->queryWbInfoInternal(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/WbAppInfo;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->getSupportVersion()I

    move-result v2

    const/16 v5, 0x2a14

    if-lt v2, v5, :cond_2

    .line 231
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    if-eqz v2, :cond_0

    .line 232
    iput-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 234
    :cond_0
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v2, :cond_3

    .line 235
    :cond_1
    iput-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 236
    iput-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    goto :goto_0

    .line 239
    :cond_2
    iput-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    .line 240
    iput-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 243
    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    if-eqz v2, :cond_6

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/api/MultiImageObject;->getImageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 246
    iget-object v6, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-static {v6, v5, v4}, Lcom/sina/weibo/sdk/utils/ImageUtils;->copyFileToWeiboTem(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 248
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_5
    iget-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    invoke-virtual {v3, v2}, Lcom/sina/weibo/sdk/api/MultiImageObject;->setImageList(Ljava/util/ArrayList;)V

    .line 253
    :cond_6
    iget-object v2, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    if-eqz v2, :cond_7

    .line 254
    iget-object v2, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    iget-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    iget-object v3, v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    invoke-static {v2, v3, v0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->copyFileToWeiboTem(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    .line 255
    iget-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 256
    iget-object v3, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/ImageUtils;->getVideoDuring(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;->during:J

    .line 260
    :cond_7
    iput-object p1, v1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;->message:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 261
    iput-boolean v4, v1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;->transDone:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 263
    :catch_0
    iput-boolean v0, v1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;->transDone:Z

    :goto_2
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 214
    check-cast p1, [Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->doInBackground([Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;)V
    .locals 2

    .line 271
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->access$300(Lcom/sina/weibo/sdk/share/WbShareTransActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 274
    iget-boolean v0, p1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;->transDone:Z

    if-nez v0, :cond_0

    .line 275
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->access$000(Lcom/sina/weibo/sdk/share/WbShareTransActivity;I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    iget-object p1, p1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;->message:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->access$400(Lcom/sina/weibo/sdk/share/WbShareTransActivity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareTransActivity$CopyResourceTask;->onPostExecute(Lcom/sina/weibo/sdk/share/WbShareTransActivity$TransResourceResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 217
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
