.class public Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;
.super Lcom/mh/movie/core/mvp/ui/adapter/d;
.source "DownLoadingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/d<",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p2, p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDownloadSize(J)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p4, p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setSpeed(J)V

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 2

    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0, v0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 50
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;

    .line 52
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownTittle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getSpeedStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getStateText()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_0
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvProportion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getProportionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getProgressValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->bar_color_yellow:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 76
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->bar_color_grey:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->bar_color_blue:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->bar_color_orange:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    :goto_2
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->rlDownItem:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;Lcom/mh/movie/core/mvp/model/entity/DownloadData;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    .line 41
    new-instance p2, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;

    invoke-direct {p2}, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;-><init>()V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->d:Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;

    .line 42
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->downloading_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
