.class public Lcom/mh/movie/core/mvp/ui/activity/CastHelperActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "CastHelperActivity.java"


# instance fields
.field ivIntroduce:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0157
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    sget p1, Lcom/mh/movie/core/R$layout;->activity_cast_helper:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 0
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 42
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/CastHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setColorForTopBar(Landroid/app/Activity;I)V

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CastHelperActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
