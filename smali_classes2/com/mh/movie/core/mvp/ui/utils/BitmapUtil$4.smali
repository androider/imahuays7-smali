.class final Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;
.super Ljava/lang/Object;
.source "BitmapUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->onSaveSuccess(Landroid/app/Activity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;->val$mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;->val$mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;->val$file:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil$4;->val$mActivity:Landroid/app/Activity;

    const-string v1, "\u5df2\u4fdd\u5b58\u5230\u7cfb\u7edf\u76f8\u518c"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
