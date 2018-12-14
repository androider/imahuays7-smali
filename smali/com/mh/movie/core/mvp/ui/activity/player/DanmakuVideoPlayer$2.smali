.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 192
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->a:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 195
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;->b:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method
