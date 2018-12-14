.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$3;
.super Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;
.source "ProjectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;
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


# virtual methods
.method protected bridge synthetic a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V
    .locals 0

    .line 289
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$3;->a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/String;I)V
    .locals 1

    .line 292
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$3;->b:I

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 289
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$3;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$3;->dismiss()V

    return-void
.end method
