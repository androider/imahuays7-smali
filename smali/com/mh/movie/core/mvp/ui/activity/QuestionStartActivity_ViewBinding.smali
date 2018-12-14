.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuestionStartActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->c:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/mh/movie/core/R$id;->tv_question_start:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->d:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->b:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->c:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
