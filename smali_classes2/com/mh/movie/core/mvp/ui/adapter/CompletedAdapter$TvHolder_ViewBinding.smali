.class public Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CompletedAdapter$TvHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    .line 23
    sget v0, Lcom/mh/movie/core/R$id;->iv_poster:I

    const-string v1, "field \'ivPoster\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->ivPoster:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->fl_poster:I

    const-string v1, "field \'flPoster\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->flPoster:Landroid/widget/FrameLayout;

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->tv_title:I

    const-string v1, "field \'tvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvTitle:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_proportion:I

    const-string v1, "field \'tvProportion\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvProportion:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_length:I

    const-string v1, "field \'tvLength\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvLength:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    .line 37
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->ivPoster:Landroid/widget/ImageView;

    .line 38
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->flPoster:Landroid/widget/FrameLayout;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvTitle:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvProportion:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvLength:Landroid/widget/TextView;

    return-void
.end method
