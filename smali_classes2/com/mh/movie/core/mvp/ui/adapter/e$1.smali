.class Lcom/mh/movie/core/mvp/ui/adapter/e$1;
.super Ljava/lang/Object;
.source "FeedBackAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/e;->a(Lcom/mh/movie/core/mvp/ui/adapter/e$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/e;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/e;I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/e;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/e;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/e;->a(Lcom/mh/movie/core/mvp/ui/adapter/e;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/e;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/e;->a(Lcom/mh/movie/core/mvp/ui/adapter/e;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/e;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/e;->a(Lcom/mh/movie/core/mvp/ui/adapter/e;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$1;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
