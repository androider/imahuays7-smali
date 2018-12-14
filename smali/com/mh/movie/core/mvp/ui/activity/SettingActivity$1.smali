.class Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p1}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 185
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setDownloadWithoutWifi(Z)V

    .line 186
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->r()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
