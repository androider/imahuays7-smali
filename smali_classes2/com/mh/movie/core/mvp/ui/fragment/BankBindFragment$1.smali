.class Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;
.super Ljava/lang/Object;
.source "BankBindFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 198
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 199
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    .line 200
    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->h()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 204
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->h()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e:Z

    if-eqz v0, :cond_2

    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    if-lez v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->a(I)V

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iput-boolean v3, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e:Z

    goto :goto_1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e:Z

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iput-boolean v2, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e:Z

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->a(I)V

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)Z

    :cond_4
    :goto_1
    return-void
.end method
