.class public Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SearchCountryNumAdapter$MyViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    .line 22
    sget v0, Lcom/mh/movie/core/R$id;->tv_state:I

    const-string v1, "field \'tvState\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/mh/movie/core/R$id;->tv_num:I

    const-string v1, "field \'tvNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvNum:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->divion:I

    const-string v1, "field \'divion\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->divion:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    .line 34
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    .line 35
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvNum:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->divion:Landroid/view/View;

    return-void
.end method
