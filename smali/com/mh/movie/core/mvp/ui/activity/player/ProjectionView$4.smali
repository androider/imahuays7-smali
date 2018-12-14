.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;
.super Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;
.source "ProjectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;Landroid/content/Context;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V
    .locals 0

    .line 329
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/String;I)V
    .locals 1

    .line 332
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 329
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 338
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iput p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->E:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    if-ne v0, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setSelect(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->dismiss()V

    .line 346
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result p2

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->E:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->d(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/mh/movie/core/androidupnp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
