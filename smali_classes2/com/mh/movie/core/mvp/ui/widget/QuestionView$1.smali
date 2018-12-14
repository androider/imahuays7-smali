.class Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;
.super Ljava/lang/Object;
.source "QuestionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
