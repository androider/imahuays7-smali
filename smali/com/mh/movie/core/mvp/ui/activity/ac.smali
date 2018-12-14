.class public abstract Lcom/mh/movie/core/mvp/ui/activity/ac;
.super Lcom/mh/movie/core/mvp/ui/activity/a;
.source "MHBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/activity/a<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected r:Landroid/content/Context;

.field protected s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/a;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    return-void
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "input_method"

    .line 87
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 131
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 132
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v0

    :cond_0
    return v3

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->a(Landroid/os/IBinder;)V

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e_()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->r:Landroid/content/Context;

    .line 37
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 40
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->startActivity(Landroid/content/Intent;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->g_()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/SpecBrandUtils;->isSpecialBrand()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 48
    invoke-static {p0, v0}, Lcom/jaeger/library/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 50
    invoke-static {p0, v0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setColorForTopBar(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/a;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ac;->s:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method
