.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/e;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/e;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
