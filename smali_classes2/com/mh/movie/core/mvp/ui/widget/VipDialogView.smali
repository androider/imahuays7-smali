.class public Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;
.super Landroid/widget/LinearLayout;
.source "VipDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;
    }
.end annotation


# instance fields
.field a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->dialog_vip:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->addView(Landroid/view/View;)V

    .line 81
    sget v1, Lcom/mh/movie/core/R$id;->tv_vip_money:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->f:Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/mh/movie/core/R$id;->tv_vip_buy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->g:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/mh/movie/core/R$id;->tv_vip_chance_money:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->h:Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/mh/movie/core/R$id;->tv_vip_chance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->i:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/aa;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/aa;-><init>(Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/ab;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/ab;-><init>(Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->b:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->c:I

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;->a(II)V

    :cond_0
    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->d:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->e:I

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;->a(II)V

    :cond_0
    return-void
.end method

.method public setMyData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    .line 55
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->d:I

    .line 57
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getMoney()I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->e:I

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->b:I

    .line 61
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getMoney()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->c:I

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->f:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public setOnVipCallBack(Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;

    return-void
.end method
