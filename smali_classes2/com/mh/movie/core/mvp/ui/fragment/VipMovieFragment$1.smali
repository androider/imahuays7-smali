.class Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "VipMovieFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Ljava/lang/String;",
        "Lcom/mh/movie/core/mvp/ui/holder/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;[I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;->a:[I

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method

.method static final synthetic a(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/ac;
    .locals 4

    .line 79
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/ac;

    sget v1, Lcom/mh/movie/core/R$layout;->view_movie_card_content:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/mh/movie/core/mvp/ui/fragment/aj;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/holder/ac;-><init>(Landroid/view/ViewGroup;IILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/ac;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;->a(Lcom/mh/movie/core/mvp/ui/holder/ac;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/ac;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/ac;

    move-result-object p1

    return-object p1
.end method
