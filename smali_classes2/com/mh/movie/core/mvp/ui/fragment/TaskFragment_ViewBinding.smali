.class public Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TaskFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->ll_task_invite:I

    const-string v1, "field \'llTaskInvite\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/mh/movie/core/R$id;->ll_task_invite:I

    const-string v2, "field \'llTaskInvite\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llTaskInvite:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->ll_task_exchange:I

    const-string v1, "field \'llTaskExchange\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lcom/mh/movie/core/R$id;->ll_task_exchange:I

    const-string v2, "field \'llTaskExchange\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llTaskExchange:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->c:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lcom/mh/movie/core/R$id;->ll_content:I

    const-string v1, "field \'llContent\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llContent:Landroid/widget/LinearLayout;

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->rv_task_list:I

    const-string v1, "field \'rvTaskList\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->rvTaskList:Landroid/support/v7/widget/RecyclerView;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->nest_scroller_view:I

    const-string v1, "field \'nestedScrollView\'"

    const-class v2, Landroid/support/v4/widget/NestedScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/NestedScrollView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    .line 63
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 64
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llTaskInvite:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llTaskExchange:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llContent:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 68
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->rvTaskList:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->b:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
