.class final synthetic Lcom/mh/movie/core/mvp/ui/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/adapter/f$b;

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/i;->a:Lcom/mh/movie/core/mvp/ui/adapter/f$b;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/i;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/i;->a:Lcom/mh/movie/core/mvp/ui/adapter/f$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/i;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->b(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
