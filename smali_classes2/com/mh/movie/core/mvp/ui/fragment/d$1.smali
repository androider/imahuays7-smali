.class Lcom/mh/movie/core/mvp/ui/fragment/d$1;
.super Ljava/lang/Object;
.source "EditableFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/fragment/d;
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
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/d;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;Z)V"
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    instance-of v3, v2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v3, :cond_0

    .line 73
    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/d;->a(Lcom/mh/movie/core/mvp/ui/fragment/d;Z)V

    if-nez v1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    const-string p2, "\u5220\u9664"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/fragment/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/mh/movie/core/R$color;->content_h1:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5220\u9664("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/fragment/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method
