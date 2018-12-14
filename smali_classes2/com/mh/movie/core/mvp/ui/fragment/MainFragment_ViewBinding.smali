.class public Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MainFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->search_pannel:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->b:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_1:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->c:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_2:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->d:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/mh/movie/core/R$id;->tv_movie_more:I

    const-string v1, "method \'gotoMoreMovie\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->e:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    .line 71
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->b:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->c:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->d:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment_ViewBinding;->e:Landroid/view/View;

    return-void
.end method
