.class public Lcom/mh/movie/core/mvp/ui/adapter/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClarityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/a$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mh/movie/core/mvp/ui/adapter/a$a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/a;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/a;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->c:I

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/a;)Lcom/mh/movie/core/mvp/ui/adapter/a$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->b:Lcom/mh/movie/core/mvp/ui/adapter/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/a$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/a$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_clarity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/a;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/a$a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->b:Lcom/mh/movie/core/mvp/ui/adapter/a$a;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;I)V
    .locals 5
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getName()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->c:I

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->video_tag_4:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_0
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    .line 69
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->b(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/a$b;

    move-result-object p1

    return-object p1
.end method
