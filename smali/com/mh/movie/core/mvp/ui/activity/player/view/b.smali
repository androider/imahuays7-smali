.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/b;
.super Lcom/mh/movie/core/mvp/ui/activity/player/view/a;
.source "DanmuAndCommentTipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/view/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/player/view/a<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILjava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    .line 113
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$color;->select_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->e()V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 38
    sget v0, Lcom/mh/movie/core/R$layout;->view_danmu_comment_tip:I

    return v0
.end method

.method protected c()I
    .locals 1

    .line 43
    sget v0, Lcom/mh/movie/core/R$layout;->view_danmu_comment_tip_land:I

    return v0
.end method

.method protected d()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d()V

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->btn_view_danmu_comment_know:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->e:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_view_danmu_comment_one:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->f:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_view_danmu_comment_two:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->g:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_view_danmu_comment_three:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->h:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()V
    .locals 6

    .line 84
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->e()V

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;

    .line 89
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->getDescrition()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;->getMoney()I

    move-result v1

    .line 92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->h:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public f()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->f()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->g()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 120
    sget v0, Lcom/mh/movie/core/R$id;->btn_view_danmu_comment_know:I

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/b$a;

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/b$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b$a;->a()V

    :cond_0
    return-void
.end method
