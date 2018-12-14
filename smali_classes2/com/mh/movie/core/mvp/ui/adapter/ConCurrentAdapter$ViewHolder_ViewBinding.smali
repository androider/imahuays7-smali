.class public Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ConCurrentAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    .line 22
    sget v0, Lcom/mh/movie/core/R$id;->tv_con:I

    const-string v1, "field \'tvCon\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->tvCon:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    .line 32
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->tvCon:Landroid/widget/TextView;

    return-void
.end method
