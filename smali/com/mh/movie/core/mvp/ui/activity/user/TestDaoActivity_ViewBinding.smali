.class public Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TestDaoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->btn_test_login:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->b:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->btn_test_login2:I

    const-string v1, "method \'onViewClicked2\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->c:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    .line 56
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->b:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
