.class public Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DowndingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->tv_start_all:I

    const-string v1, "field \'tvStartAll\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->ll_start_all:I

    const-string v1, "field \'llStartAll\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llStartAll:Landroid/widget/FrameLayout;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_sync_cache:I

    const-string v1, "field \'tvSyncCache\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSyncCache:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->ll_sync_cache:I

    const-string v1, "field \'llSyncCache\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llSyncCache:Landroid/widget/FrameLayout;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->ll_operator2:I

    const-string v1, "field \'llOperator2\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llOperator2:Landroid/widget/LinearLayout;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tv_space_text:I

    const-string v1, "field \'tvSpaceText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSpaceText:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->wrapper:I

    const-string v1, "field \'wrapper\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llStartAll:Landroid/widget/FrameLayout;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSyncCache:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llSyncCache:Landroid/widget/FrameLayout;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llOperator2:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSpaceText:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    return-void
.end method
