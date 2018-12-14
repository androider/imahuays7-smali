.class public abstract Lcom/mh/movie/core/mvp/ui/activity/s;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "EditableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/mh/movie/core/mvp/ui/adapter/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lcom/mh/movie/core/mvp/ui/adapter/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/mh/movie/core/mvp/ui/activity/s$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 25
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/s$a;->b:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->i:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    .line 93
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/s$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/s$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/s;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->h:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/s;)Lcom/mh/movie/core/mvp/ui/activity/s$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->i:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/activity/s$a;)Lcom/mh/movie/core/mvp/ui/activity/s$a;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->i:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/s;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->e:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->e:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 2

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->g:Lcom/mh/movie/core/mvp/ui/adapter/d;

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->g:Lcom/mh/movie/core/mvp/ui/adapter/d;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->h:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Lcom/mh/movie/core/mvp/ui/adapter/d$a;)V

    .line 50
    sget v0, Lcom/mh/movie/core/R$id;->tv_selected_all:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->e:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->tv_delete:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->ll_operator:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->d:Landroid/widget/LinearLayout;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 55
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->b(Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/t;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/t;-><init>(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/u;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/u;-><init>(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Ljava/util/Set;)V

    return-void
.end method

.method protected abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method protected b(Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/s$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->c()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Z)V

    return-void
.end method
