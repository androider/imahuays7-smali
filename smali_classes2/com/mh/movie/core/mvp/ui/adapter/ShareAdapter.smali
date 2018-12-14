.class public Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 41
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->b:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 42
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$layout;->watched_share_one_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;Landroid/view/View;)V

    return-object p2

    .line 44
    :cond_0
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$layout;->watched_share_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 72
    :pswitch_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ic_share_web:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->share_web:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 68
    :pswitch_1
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ic_share_qzone:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->share_qzone:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ic_share_qq:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->share_qq:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ic_share_moments:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->share_moments:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ic_share_wechat:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->share_wechat:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 52
    :pswitch_5
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->ivShareIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_fullplayer_picshare_photo:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->tvShareName:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$string;->save_photo:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->b:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
