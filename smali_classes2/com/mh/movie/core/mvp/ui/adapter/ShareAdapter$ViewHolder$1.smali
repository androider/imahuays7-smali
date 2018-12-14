.class Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;JLcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->f()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->e()V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->d()V

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->c()V

    goto :goto_0

    .line 104
    :pswitch_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->b()V

    goto :goto_0

    .line 101
    :pswitch_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;->a()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
