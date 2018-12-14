.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/y;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/y;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
