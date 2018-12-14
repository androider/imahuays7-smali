.class public Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SelectBankActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->rv:I

    const-string v1, "field \'rv\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->sidrbar:I

    const-string v1, "field \'sidrbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    return-void
.end method
