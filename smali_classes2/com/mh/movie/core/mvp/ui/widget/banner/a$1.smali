.class Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;
.super Ljava/lang/Object;
.source "BannerPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/banner/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/a;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;->a:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;->onClick(I)V

    :cond_0
    return-void
.end method
