.class public Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;
.super Landroid/widget/LinearLayout;
.source "MovieCardView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    .line 28
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->b:I

    const/4 p3, 0x2

    .line 29
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->c:I

    const/4 p3, 0x0

    .line 30
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->d:I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MovieCardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    sget v0, Lcom/mh/movie/core/R$styleable;->MovieCardView_mcv_left_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->e:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 65
    sget v0, Lcom/mh/movie/core/R$drawable;->red_point_bg:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->e:Landroid/graphics/drawable/Drawable;

    .line 67
    :cond_0
    sget p1, Lcom/mh/movie/core/R$styleable;->MovieCardView_mcv_show_title:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->a:Z

    .line 68
    sget p1, Lcom/mh/movie/core/R$styleable;->MovieCardView_mcv_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->f:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "\u9662\u7ebf\u5927\u7247\u62a2\u9c9c\u770b\uff01\u6bd4\u5f71\u9662\u66f4\u5feb"

    .line 70
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->c:I

    return-void
.end method

.method public setMcvClickListener(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2$a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2$a;

    return-void
.end method

.method public setTitleShow(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView2;->a:Z

    return-void
.end method
