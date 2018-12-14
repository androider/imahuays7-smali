.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/player/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/a;->a:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/a;->a:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->a(Landroid/view/View;)V

    return-void
.end method
