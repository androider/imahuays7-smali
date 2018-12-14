.class Lcom/mh/movie/core/mvp/ui/activity/s$2;
.super Ljava/lang/Object;
.source "EditableActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/mvp/ui/adapter/d$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/s;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/s;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;Z)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    invoke-static {v0, p2}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Lcom/mh/movie/core/mvp/ui/activity/s;Z)V

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    const-string p2, "\u5220\u9664"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/s;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->content_h1:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/s;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$2;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->f:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
