.class public Lcom/mh/movie/core/mvp/ui/adapter/f$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field final synthetic m:Lcom/mh/movie/core/mvp/ui/adapter/f;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V
    .locals 1

    .line 210
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    .line 211
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 212
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Lcom/mh/movie/core/mvp/ui/adapter/f;)Landroid/view/View;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-void

    .line 214
    :cond_0
    sget p1, Lcom/mh/movie/core/R$id;->ll_linear_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->a:Landroid/widget/LinearLayout;

    .line 215
    sget p1, Lcom/mh/movie/core/R$id;->iv_image_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->b:Landroid/widget/ImageView;

    .line 216
    sget p1, Lcom/mh/movie/core/R$id;->tv_text_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->c:Landroid/widget/TextView;

    .line 217
    sget p1, Lcom/mh/movie/core/R$id;->ll_linear_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->d:Landroid/widget/LinearLayout;

    .line 218
    sget p1, Lcom/mh/movie/core/R$id;->iv_image_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->e:Landroid/widget/ImageView;

    .line 219
    sget p1, Lcom/mh/movie/core/R$id;->tv_text_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->f:Landroid/widget/TextView;

    .line 220
    sget p1, Lcom/mh/movie/core/R$id;->ll_linear_3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->g:Landroid/widget/LinearLayout;

    .line 221
    sget p1, Lcom/mh/movie/core/R$id;->iv_image_3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->h:Landroid/widget/ImageView;

    .line 222
    sget p1, Lcom/mh/movie/core/R$id;->tv_text_3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->i:Landroid/widget/TextView;

    .line 223
    sget p1, Lcom/mh/movie/core/R$id;->ll_linear_4:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->j:Landroid/widget/LinearLayout;

    .line 224
    sget p1, Lcom/mh/movie/core/R$id;->iv_image_4:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->k:Landroid/widget/ImageView;

    .line 225
    sget p1, Lcom/mh/movie/core/R$id;->tv_text_4:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->l:Landroid/widget/TextView;

    .line 227
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/g;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/g;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/h;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/h;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/i;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/i;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->j:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/j;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/j;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 240
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result p2

    .line 241
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/content/Context;II)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 236
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result p2

    .line 237
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/content/Context;II)V

    return-void
.end method

.method final synthetic c(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result p2

    .line 233
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/content/Context;II)V

    return-void
.end method

.method final synthetic d(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 228
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result p2

    .line 229
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->m:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/content/Context;II)V

    return-void
.end method
