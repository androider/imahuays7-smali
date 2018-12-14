.class public Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;,
        Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;,
        Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Z

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a:I

    .line 23
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b:I

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->j:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->h:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a:I

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->h:Landroid/view/animation/Animation;

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->c:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$anim;->fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->f:Landroid/widget/ImageView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->icon_arrow_gray_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->g:Z

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->g:Z

    .line 99
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->i:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;Landroid/view/View;IZ)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->i:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->i:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->f:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_arrow_gray_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getExpandState()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->g:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/mh/movie/core/R$id;->collapse_value:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->d:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcom/mh/movie/core/R$id;->expand_value:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    .line 65
    sget v0, Lcom/mh/movie/core/R$id;->icon_value:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->f:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 49
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->a:I

    .line 53
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b:I

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->b:I

    .line 57
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setExpandListener(Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->j:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout$c;

    return-void
.end method
