.class public Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;
.super Landroid/widget/LinearLayout;
.source "CommentDetailView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/View;

.field c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

.field d:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field e:Landroid/widget/TextView;

.field f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/LinearLayout;

.field i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

.field j:I

.field k:I

.field l:Lcom/mh/movie/core/mvp/ui/holder/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->j:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->k:I

    .line 200
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->l:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    .line 64
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d()V

    .line 66
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f()V

    return-void
.end method

.method static final synthetic a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->k:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->j:I

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->a(ILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$layout;->widget_window_comment:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->addView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->comment_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_commend_input_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->e:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_commend_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->g:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->h:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 79
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;Z)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 132
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;-><init>(Landroid/content/Context;ZLcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/e;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/e;-><init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_popup_win_closes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/f;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/f;-><init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->h:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/g;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/widget/k;->a(Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V

    return-void
.end method

.method public a(IILjava/lang/Integer;)V
    .locals 1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 237
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 238
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result p3

    const/4 v0, 0x1

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setApproveNum(I)V

    .line 239
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setIsApprove(I)V

    .line 240
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->b()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemInserted(I)V

    .line 251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 189
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->k:I

    .line 191
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 192
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-interface {p2}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 177
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 167
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->j:I

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->k:I

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    const-string v0, "\u6211\u8981\u5410\u69fd..."

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 223
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v2

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->a(II)V

    :cond_0
    return-void
.end method

.method public setOnCallBack(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    return-void
.end method
