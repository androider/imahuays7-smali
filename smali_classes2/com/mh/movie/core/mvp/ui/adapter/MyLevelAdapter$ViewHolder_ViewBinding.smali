.class public Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MyLevelAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;

    .line 21
    sget v0, Lcom/mh/movie/core/R$id;->tv_level:I

    const-string v1, "field \'tvLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;->tvLevel:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/mh/movie/core/R$id;->tv_score:I

    const-string v1, "field \'tvScore\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;->tvScore:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;

    .line 32
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;->tvLevel:Landroid/widget/TextView;

    .line 33
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter$ViewHolder;->tvScore:Landroid/widget/TextView;

    return-void
.end method
