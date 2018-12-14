.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuestionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->qv_1:I

    const-string v1, "field \'qv1\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->qv_2:I

    const-string v1, "field \'qv2\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->qv_3:I

    const-string v1, "field \'qv3\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->qv_4:I

    const-string v1, "field \'qv4\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->qv_5:I

    const-string v1, "field \'qv5\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->qv_6:I

    const-string v1, "field \'qv6\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->qv_7:I

    const-string v1, "field \'qv7\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->qv_8:I

    const-string v1, "field \'qv8\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->qv_9:I

    const-string v1, "field \'qv9\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->qv_10:I

    const-string v1, "field \'qv10\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->qv_11:I

    const-string v1, "field \'qv11\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->qv_12:I

    const-string v1, "field \'qv12\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->et_question_suggest:I

    const-string v1, "field \'etQuestionSuggest\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->etQuestionSuggest:Landroid/widget/EditText;

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->tv_question_submit:I

    const-string v1, "field \'tvQuestionSubmit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->tvQuestionSubmit:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->b:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->c:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    .line 73
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 74
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 75
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 76
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 77
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 78
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 79
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 80
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 81
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 82
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 83
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 84
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    .line 85
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->etQuestionSuggest:Landroid/widget/EditText;

    .line 86
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->tvQuestionSubmit:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->b:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
