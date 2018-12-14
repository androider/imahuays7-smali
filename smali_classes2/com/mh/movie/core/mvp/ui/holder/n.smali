.class final synthetic Lcom/mh/movie/core/mvp/ui/holder/n;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/holder/m;

.field private final b:Lcom/mh/movie/core/mvp/ui/widget/l$a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/m;Lcom/mh/movie/core/mvp/ui/widget/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/n;->a:Lcom/mh/movie/core/mvp/ui/holder/m;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/n;->b:Lcom/mh/movie/core/mvp/ui/widget/l$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/n;->a:Lcom/mh/movie/core/mvp/ui/holder/m;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/n;->b:Lcom/mh/movie/core/mvp/ui/widget/l$a;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/holder/m;->a(Lcom/mh/movie/core/mvp/ui/widget/l$a;Ljava/lang/Void;)V

    return-void
.end method
