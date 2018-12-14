.class final synthetic Lcom/mh/movie/core/mvp/ui/holder/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/holder/x;

.field private final b:Lcom/mh/movie/core/mvp/ui/holder/d$a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/x;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/y;->a:Lcom/mh/movie/core/mvp/ui/holder/x;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/y;->b:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/y;->a:Lcom/mh/movie/core/mvp/ui/holder/x;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/y;->b:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/holder/x;->a(Lcom/mh/movie/core/mvp/ui/holder/d$a;Landroid/view/View;)V

    return-void
.end method
