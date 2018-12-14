.class Lcom/sina/weibo/sdk/utils/AidTask4Plug$1;
.super Ljava/lang/Object;
.source "AidTask4Plug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask4Plug;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/utils/AidTask4Plug;

.field final synthetic val$appkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask4Plug;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$1;->this$0:Lcom/sina/weibo/sdk/utils/AidTask4Plug;

    iput-object p2, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$1;->val$appkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$1;->this$0:Lcom/sina/weibo/sdk/utils/AidTask4Plug;

    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$1;->val$appkey:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/sina/weibo/sdk/utils/AidTask4Plug;->access$000(Lcom/sina/weibo/sdk/utils/AidTask4Plug;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 165
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
