.class public Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyLevelActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->civ_head_pic:I

    const-string v1, "field \'civHeadPic\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->civHeadPic:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->tv_name:I

    const-string v1, "field \'tvName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvName:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->tv_level:I

    const-string v1, "field \'tvLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevel:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->progressBar:I

    const-string v1, "field \'progressBar\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->tv_pre_level:I

    const-string v1, "field \'tvPreLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvPreLevel:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->tv_next_level:I

    const-string v1, "field \'tvNextLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvNextLevel:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->tv_level_desc:I

    const-string v1, "field \'tvLevelDesc\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevelDesc:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->tv_intro2:I

    const-string v1, "field \'tvIntro2\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro2:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->tv_intro3:I

    const-string v1, "field \'tvIntro3\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro3:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->tv_intro4:I

    const-string v1, "field \'tvIntro4\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro4:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->tv_intro5:I

    const-string v1, "field \'tvIntro5\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro5:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->rv_level:I

    const-string v1, "field \'rvLevel\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->rvLevel:Landroid/support/v7/widget/RecyclerView;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->nsv_scroll:I

    const-string v1, "field \'nsvScroll\'"

    const-class v2, Landroid/support/v4/widget/NestedScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    .line 56
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 57
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->civHeadPic:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvName:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevel:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvPreLevel:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvNextLevel:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevelDesc:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro2:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro3:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro4:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro5:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->rvLevel:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 70
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
