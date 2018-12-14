.class Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "CommentDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
        "Lcom/mh/movie/core/mvp/ui/holder/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/h;
    .locals 3

    .line 82
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/h;

    sget v1, Lcom/mh/movie/core/R$layout;->item_player_commend_child:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->l:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/h;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/h$a;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 79
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/h;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a(Lcom/mh/movie/core/mvp/ui/holder/h;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/h;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V
    .locals 6

    .line 87
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v5, v5, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 93
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    .line 94
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lcom/mh/movie/core/R$mipmap;->header_img:I

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->a:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 99
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_3

    const-string p3, "#\u697c\u4e3b"

    goto :goto_3

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 103
    :goto_3
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueTimeStr()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->h:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIsApprove()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_like_do:I

    goto :goto_4

    :cond_4
    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_like:I

    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getContent()Ljava/lang/String;

    move-result-object p3

    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 108
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getContent()Ljava/lang/String;

    move-result-object p2

    const-string p3, "@"

    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const-string v0, " "

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$color;->blue_48:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p2, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, p2, p3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 113
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 115
    :cond_5
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->k:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/h;

    move-result-object p1

    return-object p1
.end method
