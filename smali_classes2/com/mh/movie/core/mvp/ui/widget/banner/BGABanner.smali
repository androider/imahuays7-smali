.class public Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;
.super Landroid/widget/RelativeLayout;
.source "BGABanner.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcn/bingoogolapple/bgabanner/BGAViewPager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;,
        Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;,
        Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;,
        Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;,
        Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;
    }
.end annotation


# static fields
.field private static final Q:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private A:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

.field private B:I

.field private C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private D:Z

.field private E:Landroid/widget/TextView;

.field private F:I

.field private G:I

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Z

.field private J:I

.field private K:F

.field private L:Z

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;

.field private P:Z

.field private R:Lcn/bingoogolapple/bgabanner/d;

.field private a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

.field private s:I

.field private t:F

.field private u:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView$ScaleType;

.field private x:I

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 92
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->Q:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 55
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    const/16 v0, 0xbb8

    .line 56
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h:I

    const/16 v0, 0x320

    .line 57
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i:I

    const/16 v0, 0x51

    .line 58
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->j:I

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->o:I

    .line 64
    sget v1, Lcom/mh/movie/core/R$drawable;->bga_banner_selector_point_solid:I

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->p:I

    .line 71
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->w:Landroid/widget/ImageView$ScaleType;

    .line 72
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->x:I

    const/4 v1, 0x2

    .line 76
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->B:I

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->D:Z

    .line 80
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->F:I

    .line 86
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->L:Z

    .line 90
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->P:Z

    .line 103
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->R:Lcn/bingoogolapple/bgabanner/d;

    .line 118
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->O:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;

    return-object p0
.end method

.method private a(I)V
    .locals 6

    .line 688
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 690
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 698
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    .line 699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 701
    :goto_2
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 702
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v0, p1, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 704
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 711
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 712
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    .line 713
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_8

    .line 714
    :cond_7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 717
    :cond_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method private a(IF)V
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_6

    .line 831
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 832
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 834
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 835
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    sub-float/2addr v1, p2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_4

    .line 839
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 840
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 842
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 843
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 846
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 847
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 849
    :cond_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 850
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 853
    :cond_6
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_8

    .line 854
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 855
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_7
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 858
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 862
    :cond_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 863
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 864
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->M:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 866
    :cond_9
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 867
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->N:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private a(ILandroid/content/res/TypedArray;)V
    .locals 1

    .line 148
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointDrawable:I

    if-ne p1, v0, :cond_0

    .line 149
    sget v0, Lcom/mh/movie/core/R$drawable;->bga_banner_selector_point_solid:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->p:I

    goto/16 :goto_0

    .line 150
    :cond_0
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointContainerBackground:I

    if-ne p1, v0, :cond_1

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 152
    :cond_1
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointLeftRightMargin:I

    if-ne p1, v0, :cond_2

    .line 153
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->k:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->k:I

    goto/16 :goto_0

    .line 154
    :cond_2
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointContainerLeftRightPadding:I

    if-ne p1, v0, :cond_3

    .line 155
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->m:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->m:I

    goto/16 :goto_0

    .line 156
    :cond_3
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointTopBottomMargin:I

    if-ne p1, v0, :cond_4

    .line 157
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->l:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->l:I

    goto/16 :goto_0

    .line 158
    :cond_4
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_indicatorGravity:I

    if-ne p1, v0, :cond_5

    .line 159
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->j:I

    goto/16 :goto_0

    .line 160
    :cond_5
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointAutoPlayAble:I

    if-ne p1, v0, :cond_6

    .line 161
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    goto/16 :goto_0

    .line 162
    :cond_6
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pointAutoPlayInterval:I

    if-ne p1, v0, :cond_7

    .line 163
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h:I

    goto/16 :goto_0

    .line 164
    :cond_7
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_pageChangeDuration:I

    if-ne p1, v0, :cond_8

    .line 165
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i:I

    goto/16 :goto_0

    .line 166
    :cond_8
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_transitionEffect:I

    if-ne p1, v0, :cond_9

    .line 167
    sget-object v0, Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;->Accordion:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;->ordinal()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 168
    invoke-static {}, Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;->values()[Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    move-result-object p2

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->u:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    goto/16 :goto_0

    .line 169
    :cond_9
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_tipTextColor:I

    if-ne p1, v0, :cond_a

    .line 170
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->o:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->o:I

    goto/16 :goto_0

    .line 171
    :cond_a
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_tipTextSize:I

    if-ne p1, v0, :cond_b

    .line 172
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->n:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->n:I

    goto/16 :goto_0

    .line 173
    :cond_b
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_placeholderDrawable:I

    if-ne p1, v0, :cond_c

    .line 174
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->x:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->x:I

    goto/16 :goto_0

    .line 175
    :cond_c
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_isNumberIndicator:I

    if-ne p1, v0, :cond_d

    .line 176
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->D:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->D:Z

    goto :goto_0

    .line 177
    :cond_d
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_numberIndicatorTextColor:I

    if-ne p1, v0, :cond_e

    .line 178
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->F:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->F:I

    goto :goto_0

    .line 179
    :cond_e
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_numberIndicatorTextSize:I

    if-ne p1, v0, :cond_f

    .line 180
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->G:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->G:I

    goto :goto_0

    .line 181
    :cond_f
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_numberIndicatorBackground:I

    if-ne p1, v0, :cond_10

    .line 182
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 183
    :cond_10
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_isNeedShowIndicatorOnOnlyOnePage:I

    if-ne p1, v0, :cond_11

    .line 184
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    goto :goto_0

    .line 185
    :cond_11
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_contentBottomMargin:I

    if-ne p1, v0, :cond_12

    .line 186
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->J:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->J:I

    goto :goto_0

    .line 187
    :cond_12
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_banner_aspectRatio:I

    if-ne p1, v0, :cond_13

    .line 188
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    goto :goto_0

    .line 189
    :cond_13
    sget v0, Lcom/mh/movie/core/R$styleable;->BGABanner_android_scaleType:I

    if-ne p1, v0, :cond_14

    const/4 v0, -0x1

    .line 190
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_14

    .line 191
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->Q:[Landroid/widget/ImageView$ScaleType;

    array-length p2, p2

    if-ge p1, p2, :cond_14

    .line 192
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->Q:[Landroid/widget/ImageView$ScaleType;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->w:Landroid/widget/ImageView$ScaleType;

    :cond_14
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 124
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->r:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

    const/high16 v0, 0x40400000    # 3.0f

    .line 126
    invoke-static {p1, v0}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->k:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 127
    invoke-static {p1, v0}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->l:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 128
    invoke-static {p1, v0}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->m:I

    .line 129
    invoke-static {p1, v0}, Lcn/bingoogolapple/bgabanner/b;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->n:I

    .line 130
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#44aaaaaa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->q:Landroid/graphics/drawable/Drawable;

    .line 131
    sget-object v1, Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;->Default:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->u:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    .line 132
    invoke-static {p1, v0}, Lcn/bingoogolapple/bgabanner/b;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->G:I

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->J:I

    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 139
    sget-object v0, Lcom/mh/movie/core/R$styleable;->BGABanner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 200
    sget v1, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 201
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->m:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->l:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->m:I

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->l:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 207
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->j:I

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x30

    const/16 v7, 0xc

    if-ne v5, v6, :cond_1

    const/16 v5, 0xa

    .line 210
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    iget-boolean v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->D:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 218
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    .line 219
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    sget v8, Lcom/mh/movie/core/R$id;->banner_indicatorId:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setId(I)V

    .line 220
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 222
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 223
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->F:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->G:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 225
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 227
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_2

    .line 228
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 230
    :cond_2
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 235
    :cond_4
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    .line 236
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    sget v8, Lcom/mh/movie/core/R$id;->banner_indicatorId:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 237
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 239
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :goto_3
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    .line 243
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    .line 245
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 246
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 247
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 248
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->o:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->n:I

    int-to-float v2, v2

    invoke-virtual {p1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->j:I

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/16 p1, 0x9

    .line 255
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    sget p1, Lcom/mh/movie/core/R$id;->banner_indicatorId:I

    invoke-virtual {v5, v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const/16 p1, 0xb

    .line 259
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    sget p1, Lcom/mh/movie/core/R$id;->banner_indicatorId:I

    invoke-virtual {v5, v7, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_6
    const/16 p1, 0xe

    .line 262
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    sget p1, Lcom/mh/movie/core/R$id;->banner_indicatorId:I

    invoke-virtual {v5, v7, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    :goto_4
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a()V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->z:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 513
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 514
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 515
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->k:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->k:I

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x0

    .line 517
    :goto_0
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 518
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->p:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 526
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    goto :goto_1

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 527
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGAViewPager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->removeView(Landroid/view/View;)V

    .line 537
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    .line 540
    :cond_0
    new-instance v0, Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/bingoogolapple/bgabanner/BGAViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    .line 541
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setOffscreenPageLimit(I)V

    .line 542
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    invoke-direct {v3, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;)V

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 543
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 544
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->B:I

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setOverScrollMode(I)V

    .line 545
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->L:Z

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setAllowUserScrollable(Z)V

    .line 546
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->u:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/transformer/c;->a(Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;)Lcn/bingoogolapple/bgabanner/transformer/c;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 547
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setPageChangeDuration(I)V

    .line 549
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->J:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 551
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {p0, v1, v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setAutoPlayDelegate(Lcn/bingoogolapple/bgabanner/BGAViewPager$a;)V

    .line 556
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    rem-int v0, v1, v0

    sub-int/2addr v1, v0

    .line 557
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(I)V

    .line 559
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    goto :goto_0

    .line 561
    :cond_1
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(I)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->y:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 652
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d()V

    .line 655
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(I)V

    .line 657
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(I)V

    :cond_0
    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->P:Z

    return-void
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->A:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 270
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->x:I

    new-instance v3, Lcn/bingoogolapple/bgabanner/c;

    const/16 v4, 0x2d0

    const/16 v5, 0x168

    const/high16 v6, 0x44200000    # 640.0f

    const/high16 v7, 0x43a00000    # 320.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcn/bingoogolapple/bgabanner/c;-><init>(IIFF)V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->w:Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, v2, v3, v4}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;ILcn/bingoogolapple/bgabanner/c;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    .line 272
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->J:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 5

    .line 757
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_5

    .line 758
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v1

    const/high16 v2, -0x3c380000    # -400.0f

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v4, 0x1

    if-ge v0, v1, :cond_2

    cmpl-float v0, p1, v3

    if-gtz v0, :cond_1

    .line 760
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->t:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    add-int/2addr v0, v4

    invoke-virtual {p1, v0, v4}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setBannerCurrentItemInternal(IZ)V

    goto :goto_2

    .line 761
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    invoke-virtual {p1, v0, v4}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setBannerCurrentItemInternal(IZ)V

    goto :goto_2

    :cond_2
    cmpg-float v0, p1, v2

    if-ltz v0, :cond_4

    .line 767
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->t:F

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    goto :goto_1

    .line 770
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    invoke-virtual {p1, v0, v4}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setBannerCurrentItemInternal(IZ)V

    goto :goto_2

    .line 768
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    add-int/2addr v0, v4

    invoke-virtual {p1, v0, v4}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setBannerCurrentItemInternal(IZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    if-nez p2, :cond_0

    .line 350
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    .line 358
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 321
    new-array v1, v0, [Ljava/util/Collection;

    invoke-static {p1, v1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    .line 323
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :cond_0
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 328
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    .line 331
    :cond_1
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->y:Ljava/util/List;

    .line 332
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    .line 333
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    .line 335
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e()V

    .line 336
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f()V

    .line 337
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->v:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 675
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d()V

    .line 676
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->r:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->r:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->r:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 593
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 596
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d()V

    goto :goto_0

    .line 600
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    .line 604
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentItem()I
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Collection;

    invoke-static {v0, v1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    return-object v0
.end method

.method public getViewPager()Lcn/bingoogolapple/bgabanner/BGAViewPager;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    return-object v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 670
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 671
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 664
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 665
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 582
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 583
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 584
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 585
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 588
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7

    .line 788
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(IF)V

    .line 790
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->s:I

    .line 791
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->t:F

    .line 793
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/util/Collection;

    invoke-static {v0, v2}, Lcn/bingoogolapple/bgabanner/b;->b(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 798
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    .line 799
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 801
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 805
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 814
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 779
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(I)V

    .line 781
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 643
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_2

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->A:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

    return-void
.end method

.method public setAllowUserScrollable(Z)V
    .locals 1

    .line 412
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->L:Z

    .line 413
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->L:Z

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setAllowUserScrollable(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->K:F

    .line 577
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->requestLayout()V

    return-void
.end method

.method public setAutoPlayAble(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    .line 299
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d()V

    .line 301
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {p1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {p1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAutoPlayInterval(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h:I

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_3

    .line 619
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v0

    .line 621
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v0, v3

    sub-int/2addr p1, v3

    if-gez p1, :cond_1

    const/4 v1, -0x1

    :goto_0
    if-lt v1, p1, :cond_2

    .line 627
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v2}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    :goto_1
    if-gt v1, p1, :cond_2

    .line 631
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v2}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    goto :goto_2

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0, p1, v2}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setCurrentItem(IZ)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, p1, v0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setDelegate(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->z:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;

    return-void
.end method

.method public setIsNeedShowIndicatorOnOnlyOnePage(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->I:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->C:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 503
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->B:I

    .line 504
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->B:I

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setPageChangeDuration(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_0

    .line 285
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i:I

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setPageChangeDuration(I)V

    :cond_0
    return-void
.end method

.method public setPageTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public setTransitionEffect(Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->u:Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;

    .line 727
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a:Lcn/bingoogolapple/bgabanner/BGAViewPager;

    if-eqz p1, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f()V

    .line 729
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 730
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c:Ljava/util/List;

    invoke-static {p1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 732
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b:Ljava/util/List;

    invoke-static {p1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
