.class Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 325
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setDownloadWithoutWifi(Z)V

    .line 326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    .line 327
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->r()V

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
