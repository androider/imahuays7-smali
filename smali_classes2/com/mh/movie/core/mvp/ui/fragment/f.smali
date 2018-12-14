.class final synthetic Lcom/mh/movie/core/mvp/ui/fragment/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/fragment/d;

.field private final b:Lcom/mh/movie/core/mvp/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/d;Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/f;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/f;->b:Lcom/mh/movie/core/mvp/ui/adapter/d;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/f;->a:Lcom/mh/movie/core/mvp/ui/fragment/d;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/f;->b:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V

    return-void
.end method
