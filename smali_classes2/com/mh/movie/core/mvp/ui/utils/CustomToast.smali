.class public Lcom/mh/movie/core/mvp/ui/utils/CustomToast;
.super Ljava/lang/Object;
.source "CustomToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCommodityText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const-string p1, "layout_inflater"

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 62
    sget v0, Lcom/mh/movie/core/R$layout;->custom_commodity_toast:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/16 v1, 0x11

    .line 72
    invoke-virtual {v0, v1, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-object v0
.end method

.method public static makePartner(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "layout_inflater"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    sget v1, Lcom/mh/movie/core/R$layout;->custom_partner_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 84
    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p0, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    const/16 v3, 0x55

    invoke-virtual {v1, v3, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    const/4 p0, 0x3

    .line 85
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-object v1
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "layout_inflater"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 23
    sget v1, Lcom/mh/movie/core/R$layout;->custom_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 24
    sget v1, Lcom/mh/movie/core/R$id;->tv_toast_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "+"

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x22

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x11

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, p0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-object p1
.end method

.method public static makeTitleText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 7

    const-string v0, "layout_inflater"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    sget v1, Lcom/mh/movie/core/R$layout;->custom_title_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    sget v1, Lcom/mh/movie/core/R$id;->tv_toast_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    sget v2, Lcom/mh/movie/core/R$id;->tv_toast_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget v5, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v5, "\u9ebb"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/16 v5, 0xb

    const/16 v6, 0x22

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/16 p2, 0x11

    .line 54
    invoke-virtual {p1, p2, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 55
    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-object p1
.end method
