.class Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;
.super Landroid/os/AsyncTask;
.source "WbShareToStoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sina/weibo/sdk/api/StoryMessage;",
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/api/StoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;-><init>(Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sina/weibo/sdk/api/StoryMessage;)Lcom/sina/weibo/sdk/api/StoryObject;
    .locals 3

    const/4 v0, 0x0

    .line 115
    aget-object p1, p1, v0

    .line 118
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/api/StoryMessage;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/api/StoryMessage;->getImageUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/api/StoryMessage;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1, v0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->copyFileToWeiboTem(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_2
    new-instance v1, Lcom/sina/weibo/sdk/api/StoryObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/StoryObject;-><init>()V

    .line 126
    iput-object p1, v1, Lcom/sina/weibo/sdk/api/StoryObject;->sourcePath:Ljava/lang/String;

    .line 127
    iput v0, v1, Lcom/sina/weibo/sdk/api/StoryObject;->sourceType:I

    .line 128
    invoke-static {}, Lcom/sina/weibo/sdk/WbSdk;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sina/weibo/sdk/api/StoryObject;->appId:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sina/weibo/sdk/api/StoryObject;->appPackage:Ljava/lang/String;

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, [Lcom/sina/weibo/sdk/api/StoryMessage;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->doInBackground([Lcom/sina/weibo/sdk/api/StoryMessage;)Lcom/sina/weibo/sdk/api/StoryObject;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sina/weibo/sdk/api/StoryObject;)V
    .locals 4

    .line 135
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 138
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "sinaweibo://story/publish?forceedit=1&finish=true"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "storyData"

    .line 139
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    invoke-virtual {p1, v1}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;->access$100(Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->this$0:Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;->access$100(Lcom/sina/weibo/sdk/share/WbShareToStoryActivity;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/sina/weibo/sdk/api/StoryObject;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/share/WbShareToStoryActivity$SaveFileTask;->onPostExecute(Lcom/sina/weibo/sdk/api/StoryObject;)V

    return-void
.end method
