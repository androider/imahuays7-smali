.class Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "CommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e()V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/h;
    .locals 3

    .line 119
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/h;

    sget v1, Lcom/mh/movie/core/R$layout;->item_player_commend:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->h:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/h;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/h$a;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/h;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;->a(Lcom/mh/movie/core/mvp/ui/holder/h;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/h;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 3

    .line 124
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 125
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    .line 126
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/mh/movie/core/R$mipmap;->header_img:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->a:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 131
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueTimeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getChildNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->h:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIsApprove()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_like_do:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_like:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->k:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/h;

    move-result-object p1

    return-object p1
.end method
