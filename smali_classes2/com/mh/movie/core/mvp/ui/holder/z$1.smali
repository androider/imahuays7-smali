.class Lcom/mh/movie/core/mvp/ui/holder/z$1;
.super Ljava/lang/Object;
.source "TvPagerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/holder/z;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/holder/z;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z$1;->b:Lcom/mh/movie/core/mvp/ui/holder/z;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/z$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/z$1;->b:Lcom/mh/movie/core/mvp/ui/holder/z;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/holder/z;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    return-void
.end method
