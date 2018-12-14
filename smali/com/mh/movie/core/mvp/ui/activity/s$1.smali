.class Lcom/mh/movie/core/mvp/ui/activity/s$1;
.super Ljava/lang/Object;
.source "EditableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/s;->b(Lcom/mh/movie/core/mvp/ui/adapter/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/d;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/s;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Lcom/mh/movie/core/mvp/ui/activity/s;)Lcom/mh/movie/core/mvp/ui/activity/s$a;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/s$a;->b:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/s$a;->a:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/activity/s$a;)Lcom/mh/movie/core/mvp/ui/activity/s$a;

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/d;->b(Z)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/s$a;->b:Lcom/mh/movie/core/mvp/ui/activity/s$a;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/activity/s$a;)Lcom/mh/movie/core/mvp/ui/activity/s$a;

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->b:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/s;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u7f16\u8f91"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->b(Z)V

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/s$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Z)V

    :goto_0
    return-void
.end method
