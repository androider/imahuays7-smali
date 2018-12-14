.class final synthetic Lcom/mh/movie/core/mvp/ui/adapter/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/adapter/l$b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/l$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/m;->a:Lcom/mh/movie/core/mvp/ui/adapter/l$b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/m;->a:Lcom/mh/movie/core/mvp/ui/adapter/l$b;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a(Landroid/view/View;)V

    return-void
.end method
