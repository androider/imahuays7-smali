.class public Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchStateNumActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->et_search:I

    const-string v1, "field \'etSeatch\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->sidrbar:I

    const-string v1, "field \'sidrbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->cancel:I

    const-string v1, "field \'ivCancel\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->ivCancel:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->fl_search:I

    const-string v1, "field \'flSearch\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->flSearch:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->ivCancel:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->flSearch:Landroid/widget/FrameLayout;

    return-void
.end method
