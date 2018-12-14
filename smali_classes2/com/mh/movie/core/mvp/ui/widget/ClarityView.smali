.class public Lcom/mh/movie/core/mvp/ui/widget/ClarityView;
.super Landroid/widget/LinearLayout;
.source "ClarityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/support/v7/widget/RecyclerView;

.field c:Lcom/mh/movie/core/mvp/ui/adapter/a;

.field d:Ljava/util/List;

.field private e:Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a()V

    .line 44
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->b()V

    .line 45
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->dialog_clarity_land:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ClarityView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 53
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setGravity(I)V

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->b:Landroid/support/v7/widget/RecyclerView;

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ClarityView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 63
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/d;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/d;-><init>(Lcom/mh/movie/core/mvp/ui/widget/ClarityView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic a(IZ)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->e:Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 70
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    .line 71
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->e:Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;->a(I)V

    :cond_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 56
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->d:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->c:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    return-void
.end method

.method public setOnChoiceCallback(Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->e:Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;

    return-void
.end method
