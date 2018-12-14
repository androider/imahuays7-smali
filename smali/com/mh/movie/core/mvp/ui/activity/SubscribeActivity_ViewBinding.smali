.class public Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SubscribeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->back:I

    const-string v1, "field \'back\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->back:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_weibo:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->b:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_weixin:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->c:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_douyin:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->d:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_tieba:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->e:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    .line 78
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->back:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->b:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->c:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->d:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity_ViewBinding;->e:Landroid/view/View;

    return-void
.end method
