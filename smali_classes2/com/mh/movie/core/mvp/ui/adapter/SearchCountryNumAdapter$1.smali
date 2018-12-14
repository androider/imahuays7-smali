.class Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;
.super Ljava/lang/Object;
.source "SearchCountryNumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
