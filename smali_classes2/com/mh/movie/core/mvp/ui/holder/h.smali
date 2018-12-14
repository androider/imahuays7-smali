.class public Lcom/mh/movie/core/mvp/ui/holder/h;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "CommentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/holder/h$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field m:Lcom/mh/movie/core/mvp/ui/holder/h$a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/h$a;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 32
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->m:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->a:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->b:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->c:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_commend_item_commend:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->d:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_comment_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->e:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_comment_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->f:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_commend_item_up:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->g:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_up_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->h:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_up_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->i:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_commend_item_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->k:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/mh/movie/core/R$id;->v_bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->l:Landroid/view/View;

    .line 49
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/h$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/holder/h$1;-><init>(Lcom/mh/movie/core/mvp/ui/holder/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/h$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/holder/h$2;-><init>(Lcom/mh/movie/core/mvp/ui/holder/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
