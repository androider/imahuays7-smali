.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuestionResultActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_result:I

    const-string v1, "field \'tvResult\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->tvResult:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->c:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;

    .line 58
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->tvResult:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->b:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
