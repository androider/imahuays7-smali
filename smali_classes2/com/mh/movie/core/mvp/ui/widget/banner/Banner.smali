.class public Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:[I

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

.field private h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

.field private i:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a:Z

    const/4 p2, 0x2

    .line 33
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c:[I

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->i:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 73
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->addView(Landroid/view/View;)V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    .line 79
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)[I
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c:[I

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/FrameLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a()Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    :cond_0
    return-object p0
.end method

.method public a(I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    or-int/lit8 v1, p1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 249
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e:Landroid/widget/FrameLayout;

    const/16 v3, 0xa

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;)V

    return-object p0
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/banner/a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .locals 5

    .line 144
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->setCurrentItem(I)V

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 156
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    if-ge v1, v2, :cond_1

    .line 162
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public varargs a([I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c:[I

    const/4 v1, 0x1

    aget p1, p1, v1

    aput p1, v0, v1

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a:Z

    return-void
.end method

.method public setCurrentPager(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->setCurrentItem(I)V

    return-void
.end method
