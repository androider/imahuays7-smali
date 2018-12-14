.class public abstract Lcom/mh/movie/core/mvp/ui/fragment/h;
.super Lcom/jess/arms/a/e;
.source "MHBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Lcom/jess/arms/a/e<",
        "TP;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private c:Lbutterknife/Unbinder;

.field private e:Z

.field private f:Z

.field private g:Z

.field protected h:Landroid/view/View;

.field i:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/jess/arms/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/fragment/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/jess/arms/a/e;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->g:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->e:Z

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    .line 105
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->f:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    return-object v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1}, Lcom/jess/arms/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->c()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/jess/arms/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->c:Lbutterknife/Unbinder;

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroy()V

    .line 98
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->c()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroyView()V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    if-nez v0, :cond_1

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->g:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->j()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->g:Z

    :cond_0
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->a(Z)V

    .line 83
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->e:Z

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jess/arms/a/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/jess/arms/a/e;->setUserVisibleHint(Z)V

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->h:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->j()V

    .line 38
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->g:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/h;->a(Z)V

    .line 42
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->e:Z

    return-void

    .line 45
    :cond_2
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->e:Z

    if-eqz p1, :cond_3

    .line 46
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/h;->e:Z

    .line 47
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/h;->a(Z)V

    :cond_3
    return-void
.end method
