.class public Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EditNameActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->et_name:I

    const-string v1, "field \'etName\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->iv_close:I

    const-string v1, "field \'ivClose\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->iv_close:I

    const-string v1, "field \'ivClose\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->ivClose:Landroid/widget/ImageView;

    .line 36
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->b:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->ivClose:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
