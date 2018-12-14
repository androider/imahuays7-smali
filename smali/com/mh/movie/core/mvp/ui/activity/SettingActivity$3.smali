.class Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->clearImageCache(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    const-string v1, "\u6e05\u9664\u6210\u529f!"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    const-string v1, "\u7f13\u5b58\u5927\u5c0f\uff1a0M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    const-string v1, "\u6e05\u9664\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
