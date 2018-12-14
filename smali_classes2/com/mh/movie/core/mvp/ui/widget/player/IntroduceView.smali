.class public Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;
.super Landroid/widget/LinearLayout;
.source "IntroduceView.java"


# instance fields
.field a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->b()V

    .line 36
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_introduce_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/player/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/player/a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 47
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setBackgroundColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->widget_introduce:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 42
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setVisibility(I)V

    return-void
.end method

.method public setData(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 6

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v4, Lcom/mh/movie/core/R$id;->introduce_type:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v3, Lcom/mh/movie/core/R$id;->introduce_direct:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDirector()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v3, Lcom/mh/movie/core/R$id;->introduce_player:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getStaring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v3, Lcom/mh/movie/core/R$id;->introduce_playCount:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getPlayCount()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v3, Lcom/mh/movie/core/R$id;->introduce_score:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "\u8c46\u74e3%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDoubanScore()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->introduce_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->introduce_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
