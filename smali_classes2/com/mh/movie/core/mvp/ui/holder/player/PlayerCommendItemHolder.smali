.class public Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;
.super Lcom/jess/arms/a/g;
.source "PlayerCommendItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/g<",
        "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/jess/arms/b/a/a;

.field private d:Lcom/jess/arms/http/imageloader/c;

.field ivPlayerCommendItemAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0163
    .end annotation
.end field

.field ivPlayerCommendItemName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0164
    .end annotation
.end field

.field ivPlayerCommendItemTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0165
    .end annotation
.end field

.field ivPlayerCommendItemUpIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0166
    .end annotation
.end field

.field ivPlayerCommendItemUpInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0167
    .end annotation
.end field

.field ivPlayerDetailCommentIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0168
    .end annotation
.end field

.field llPlayerCommendItemCommend:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01fb
    .end annotation
.end field

.field llPlayerCommendItemUp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01fc
    .end annotation
.end field

.field tvPlayerCommendItemInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0422
    .end annotation
.end field

.field tvPlayerDetailCommentInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0425
    .end annotation
.end field


# virtual methods
.method protected a()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->c:Lcom/jess/arms/b/a/a;

    invoke-interface {v1}, Lcom/jess/arms/b/a/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/jess/arms/http/imageloader/glide/h;->r()Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemAvatar:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 121
    invoke-virtual {v2, v3}, Lcom/jess/arms/http/imageloader/glide/h$a;->a([Landroid/widget/ImageView;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/jess/arms/http/imageloader/glide/h$a;->a()Lcom/jess/arms/http/imageloader/glide/h;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/jess/arms/http/imageloader/c;->b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemAvatar:Landroid/widget/ImageView;

    .line 124
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->c:Lcom/jess/arms/b/a/a;

    .line 125
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V
    .locals 2

    .line 94
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 95
    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    .line 96
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/mh/movie/core/R$mipmap;->header_img:I

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemAvatar:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 101
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueTimeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getChildNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpInfo:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIsApprove()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 107
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpIcon:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_like_do:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerCommendItemInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V

    return-void
.end method
