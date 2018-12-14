.class public Lcom/mh/movie/core/mvp/ui/widget/WheelView;
.super Landroid/widget/ScrollView;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "WheelView"


# instance fields
.field public b:I

.field c:I

.field d:Ljava/util/List;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Ljava/lang/Runnable;

.field j:I

.field k:I

.field l:[I

.field m:Landroid/graphics/Paint;

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/LinearLayout;

.field private p:I

.field private q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    .line 109
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    const/16 v0, 0x32

    .line 177
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->j:I

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    const/4 v0, -0x1

    .line 323
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->p:I

    .line 58
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 97
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    .line 109
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    const/16 p2, 0x32

    .line 177
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->j:I

    const/4 p2, 0x0

    .line 196
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    const/4 p2, -0x1

    .line 323
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->p:I

    .line 63
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 97
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    .line 109
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    const/16 p2, 0x32

    .line 177
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->j:I

    const/4 p2, 0x0

    .line 196
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    const/4 p2, -0x1

    .line 323
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->p:I

    .line 68
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    .line 441
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 442
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 443
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 5

    .line 200
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;

    invoke-interface {v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41100000    # 9.0f

    .line 206
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(F)I

    move-result p1

    .line 207
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    if-nez p1, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    .line 210
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->f:I

    mul-int v3, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->f:I

    mul-int v2, v2, v3

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 5

    .line 255
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr v0, v1

    .line 256
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    rem-int v1, p1, v1

    .line 257
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    div-int/2addr p1, v2

    if-nez v1, :cond_0

    .line 260
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 262
    :cond_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 263
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    .line 292
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 294
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    .line 299
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    sget v4, Lcom/mh/movie/core/R$color;->black:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 300
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 302
    :cond_3
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    sget v4, Lcom/mh/movie/core/R$color;->text_b9:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 303
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 113
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->addView(Landroid/view/View;)V

    .line 125
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->f:I

    .line 189
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)[I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c()[I

    move-result-object p0

    return-object p0
.end method

.method private c()[I
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->l:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->l:[I

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->l:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    mul-int v2, v2, v3

    aput v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->l:[I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    aput v1, v0, v3

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->l:[I

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->i:Ljava/lang/Runnable;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->j:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public fling(I)V
    .locals 0

    .line 413
    div-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method public getOffset()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    return v0
.end method

.method public getOnWheelViewListener()Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;

    return-object v0
.end method

.method public getSeletedIndex()I
    .locals 2

    .line 407
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSeletedItem()Ljava/lang/Object;
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 240
    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(I)V

    if-le p2, p4, :cond_0

    const/4 p1, 0x1

    .line 244
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->p:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 247
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->p:I

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 375
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", oldw: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", oldh: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    const/4 p1, 0x0

    .line 377
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a()V

    .line 422
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 333
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    if-nez p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->n:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    .line 335
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    .line 339
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    .line 340
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    const-string v0, "#dbdbdb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->m:Landroid/graphics/Paint;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 344
    :cond_1
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V

    .line 368
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b()V

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    return-void
.end method

.method public setOnWheelViewListener(Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->q:Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;

    return-void
.end method

.method public setSeletion(I)V
    .locals 1

    .line 392
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    .line 393
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->b:I

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->c:I

    return-void
.end method
