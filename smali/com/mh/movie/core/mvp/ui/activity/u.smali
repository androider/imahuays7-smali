.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/s;

.field private final b:Lcom/mh/movie/core/mvp/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/s;Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/u;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/u;->b:Lcom/mh/movie/core/mvp/ui/adapter/d;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/u;->a:Lcom/mh/movie/core/mvp/ui/activity/s;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/u;->b:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V

    return-void
.end method
